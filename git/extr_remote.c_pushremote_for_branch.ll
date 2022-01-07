; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_pushremote_for_branch.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_pushremote_for_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.branch = type { i8* }

@pushremote_name = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pushremote_for_branch(%struct.branch* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.branch*, align 8
  %5 = alloca i32*, align 8
  store %struct.branch* %0, %struct.branch** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.branch*, %struct.branch** %4, align 8
  %7 = icmp ne %struct.branch* %6, null
  br i1 %7, label %8, label %22

8:                                                ; preds = %2
  %9 = load %struct.branch*, %struct.branch** %4, align 8
  %10 = getelementptr inbounds %struct.branch, %struct.branch* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %8
  %14 = load i32*, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32*, i32** %5, align 8
  store i32 1, i32* %17, align 4
  br label %18

18:                                               ; preds = %16, %13
  %19 = load %struct.branch*, %struct.branch** %4, align 8
  %20 = getelementptr inbounds %struct.branch, %struct.branch* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %3, align 8
  br label %36

22:                                               ; preds = %8, %2
  %23 = load i8*, i8** @pushremote_name, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i32*, i32** %5, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32*, i32** %5, align 8
  store i32 1, i32* %29, align 4
  br label %30

30:                                               ; preds = %28, %25
  %31 = load i8*, i8** @pushremote_name, align 8
  store i8* %31, i8** %3, align 8
  br label %36

32:                                               ; preds = %22
  %33 = load %struct.branch*, %struct.branch** %4, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = call i8* @remote_for_branch(%struct.branch* %33, i32* %34)
  store i8* %35, i8** %3, align 8
  br label %36

36:                                               ; preds = %32, %30, %18
  %37 = load i8*, i8** %3, align 8
  ret i8* %37
}

declare dso_local i8* @remote_for_branch(%struct.branch*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
