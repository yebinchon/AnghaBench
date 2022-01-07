; ModuleID = '/home/carl/AnghaBench/git/extr_unpack-trees.c_debug_path.c'
source_filename = "/home/carl/AnghaBench/git/extr_unpack-trees.c_debug_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.traverse_info = type { i8*, %struct.traverse_info* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.traverse_info*)* @debug_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @debug_path(%struct.traverse_info* %0) #0 {
  %2 = alloca %struct.traverse_info*, align 8
  store %struct.traverse_info* %0, %struct.traverse_info** %2, align 8
  %3 = load %struct.traverse_info*, %struct.traverse_info** %2, align 8
  %4 = getelementptr inbounds %struct.traverse_info, %struct.traverse_info* %3, i32 0, i32 1
  %5 = load %struct.traverse_info*, %struct.traverse_info** %4, align 8
  %6 = icmp ne %struct.traverse_info* %5, null
  br i1 %6, label %7, label %21

7:                                                ; preds = %1
  %8 = load %struct.traverse_info*, %struct.traverse_info** %2, align 8
  %9 = getelementptr inbounds %struct.traverse_info, %struct.traverse_info* %8, i32 0, i32 1
  %10 = load %struct.traverse_info*, %struct.traverse_info** %9, align 8
  call void @debug_path(%struct.traverse_info* %10)
  %11 = load %struct.traverse_info*, %struct.traverse_info** %2, align 8
  %12 = getelementptr inbounds %struct.traverse_info, %struct.traverse_info* %11, i32 0, i32 1
  %13 = load %struct.traverse_info*, %struct.traverse_info** %12, align 8
  %14 = getelementptr inbounds %struct.traverse_info, %struct.traverse_info* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %7
  %19 = call i32 @putchar(i8 signext 47)
  br label %20

20:                                               ; preds = %18, %7
  br label %21

21:                                               ; preds = %20, %1
  %22 = load %struct.traverse_info*, %struct.traverse_info** %2, align 8
  %23 = getelementptr inbounds %struct.traverse_info, %struct.traverse_info* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %24)
  ret void
}

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
