; ModuleID = '/home/carl/AnghaBench/git/extr_git.c_get_builtin.c'
source_filename = "/home/carl/AnghaBench/git/extr_git.c_get_builtin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_struct = type { i32 }

@commands = common dso_local global %struct.cmd_struct* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cmd_struct* (i8*)* @get_builtin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cmd_struct* @get_builtin(i8* %0) #0 {
  %2 = alloca %struct.cmd_struct*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cmd_struct*, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %25, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.cmd_struct*, %struct.cmd_struct** @commands, align 8
  %9 = call i32 @ARRAY_SIZE(%struct.cmd_struct* %8)
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %6
  %12 = load %struct.cmd_struct*, %struct.cmd_struct** @commands, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %12, i64 %14
  store %struct.cmd_struct* %15, %struct.cmd_struct** %5, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = load %struct.cmd_struct*, %struct.cmd_struct** %5, align 8
  %18 = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @strcmp(i8* %16, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %11
  %23 = load %struct.cmd_struct*, %struct.cmd_struct** %5, align 8
  store %struct.cmd_struct* %23, %struct.cmd_struct** %2, align 8
  br label %29

24:                                               ; preds = %11
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %6

28:                                               ; preds = %6
  store %struct.cmd_struct* null, %struct.cmd_struct** %2, align 8
  br label %29

29:                                               ; preds = %28, %22
  %30 = load %struct.cmd_struct*, %struct.cmd_struct** %2, align 8
  ret %struct.cmd_struct* %30
}

declare dso_local i32 @ARRAY_SIZE(%struct.cmd_struct*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
