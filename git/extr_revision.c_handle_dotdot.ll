; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_handle_dotdot.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_handle_dotdot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32 }
%struct.object_context = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"..\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.rev_info*, i32, i32)* @handle_dotdot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_dotdot(i8* %0, %struct.rev_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.rev_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.object_context, align 4
  %11 = alloca %struct.object_context, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.rev_info* %1, %struct.rev_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = call i8* @strstr(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %15, i8** %12, align 8
  %16 = load i8*, i8** %12, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %37

19:                                               ; preds = %4
  %20 = call i32 @memset(%struct.object_context* %10, i32 0, i32 4)
  %21 = call i32 @memset(%struct.object_context* %11, i32 0, i32 4)
  %22 = load i8*, i8** %12, align 8
  store i8 0, i8* %22, align 1
  %23 = load i8*, i8** %6, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = load %struct.rev_info*, %struct.rev_info** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @handle_dotdot_1(i8* %23, i8* %24, %struct.rev_info* %25, i32 %26, i32 %27, %struct.object_context* %10, %struct.object_context* %11)
  store i32 %28, i32* %13, align 4
  %29 = load i8*, i8** %12, align 8
  store i8 46, i8* %29, align 1
  %30 = getelementptr inbounds %struct.object_context, %struct.object_context* %10, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @free(i32 %31)
  %33 = getelementptr inbounds %struct.object_context, %struct.object_context* %11, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @free(i32 %34)
  %36 = load i32, i32* %13, align 4
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %19, %18
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @memset(%struct.object_context*, i32, i32) #1

declare dso_local i32 @handle_dotdot_1(i8*, i8*, %struct.rev_info*, i32, i32, %struct.object_context*, %struct.object_context*) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
