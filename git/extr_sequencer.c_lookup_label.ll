; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_lookup_label.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_lookup_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { i32 }
%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"refs/rewritten/%.*s\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"refs/rewritten/\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"could not resolve '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.commit* (i8*, i32, %struct.strbuf*)* @lookup_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.commit* @lookup_label(i8* %0, i32 %1, %struct.strbuf* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca %struct.commit*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.strbuf* %2, %struct.strbuf** %6, align 8
  %8 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %9 = call i32 @strbuf_reset(%struct.strbuf* %8)
  %10 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @strbuf_addf(%struct.strbuf* %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %11, i8* %12)
  %14 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %15 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.commit* @lookup_commit_reference_by_name(i32 %16)
  store %struct.commit* %17, %struct.commit** %7, align 8
  %18 = load %struct.commit*, %struct.commit** %7, align 8
  %19 = icmp ne %struct.commit* %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %3
  %21 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %22 = call i32 @strlen(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 @strbuf_splice(%struct.strbuf* %21, i32 0, i32 %22, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %24 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %25 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.commit* @lookup_commit_reference_by_name(i32 %26)
  store %struct.commit* %27, %struct.commit** %7, align 8
  br label %28

28:                                               ; preds = %20, %3
  %29 = load %struct.commit*, %struct.commit** %7, align 8
  %30 = icmp ne %struct.commit* %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %28
  %32 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %33 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %34 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @error(i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %31, %28
  %38 = load %struct.commit*, %struct.commit** %7, align 8
  ret %struct.commit* %38
}

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32, i8*) #1

declare dso_local %struct.commit* @lookup_commit_reference_by_name(i32) #1

declare dso_local i32 @strbuf_splice(%struct.strbuf*, i32, i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @error(i32, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
