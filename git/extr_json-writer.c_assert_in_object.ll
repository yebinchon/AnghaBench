; ModuleID = '/home/carl/AnghaBench/git/extr_json-writer.c_assert_in_object.c'
source_filename = "/home/carl/AnghaBench/git/extr_json-writer.c_assert_in_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.json_writer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8* }

@.str = private unnamed_addr constant [53 x i8] c"json-writer: object: missing jw_object_begin(): '%s'\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"json-writer: object: not in object: '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.json_writer*, i8*)* @assert_in_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assert_in_object(%struct.json_writer* %0, i8* %1) #0 {
  %3 = alloca %struct.json_writer*, align 8
  %4 = alloca i8*, align 8
  store %struct.json_writer* %0, %struct.json_writer** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.json_writer*, %struct.json_writer** %3, align 8
  %6 = getelementptr inbounds %struct.json_writer, %struct.json_writer* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @BUG(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %11)
  br label %13

13:                                               ; preds = %10, %2
  %14 = load %struct.json_writer*, %struct.json_writer** %3, align 8
  %15 = getelementptr inbounds %struct.json_writer, %struct.json_writer* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.json_writer*, %struct.json_writer** %3, align 8
  %19 = getelementptr inbounds %struct.json_writer, %struct.json_writer* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %17, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 123
  br i1 %27, label %28, label %31

28:                                               ; preds = %13
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @BUG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %28, %13
  ret void
}

declare dso_local i32 @BUG(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
