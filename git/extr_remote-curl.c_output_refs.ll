; ModuleID = '/home/carl/AnghaBench/git/extr_remote-curl.c_output_refs.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote-curl.c_output_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref = type { i8*, i8*, i32, %struct.ref* }

@.str = private unnamed_addr constant [8 x i8] c"@%s %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ref*)* @output_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_refs(%struct.ref* %0) #0 {
  %2 = alloca %struct.ref*, align 8
  %3 = alloca %struct.ref*, align 8
  store %struct.ref* %0, %struct.ref** %2, align 8
  %4 = load %struct.ref*, %struct.ref** %2, align 8
  store %struct.ref* %4, %struct.ref** %3, align 8
  br label %5

5:                                                ; preds = %30, %1
  %6 = load %struct.ref*, %struct.ref** %3, align 8
  %7 = icmp ne %struct.ref* %6, null
  br i1 %7, label %8, label %34

8:                                                ; preds = %5
  %9 = load %struct.ref*, %struct.ref** %3, align 8
  %10 = getelementptr inbounds %struct.ref, %struct.ref* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %8
  %14 = load %struct.ref*, %struct.ref** %3, align 8
  %15 = getelementptr inbounds %struct.ref, %struct.ref* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load %struct.ref*, %struct.ref** %3, align 8
  %18 = getelementptr inbounds %struct.ref, %struct.ref* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %16, i8* %19)
  br label %29

21:                                               ; preds = %8
  %22 = load %struct.ref*, %struct.ref** %3, align 8
  %23 = getelementptr inbounds %struct.ref, %struct.ref* %22, i32 0, i32 2
  %24 = call i8* @oid_to_hex(i32* %23)
  %25 = load %struct.ref*, %struct.ref** %3, align 8
  %26 = getelementptr inbounds %struct.ref, %struct.ref* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %24, i8* %27)
  br label %29

29:                                               ; preds = %21, %13
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.ref*, %struct.ref** %3, align 8
  %32 = getelementptr inbounds %struct.ref, %struct.ref* %31, i32 0, i32 3
  %33 = load %struct.ref*, %struct.ref** %32, align 8
  store %struct.ref* %33, %struct.ref** %3, align 8
  br label %5

34:                                               ; preds = %5
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* @stdout, align 4
  %37 = call i32 @fflush(i32 %36)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @oid_to_hex(i32*) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
