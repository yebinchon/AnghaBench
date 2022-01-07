; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_resolve_remote_symref.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_resolve_remote_symref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref = type { i32, i32, i32, %struct.ref* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @resolve_remote_symref(%struct.ref* %0, %struct.ref* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ref*, align 8
  %5 = alloca %struct.ref*, align 8
  store %struct.ref* %0, %struct.ref** %4, align 8
  store %struct.ref* %1, %struct.ref** %5, align 8
  %6 = load %struct.ref*, %struct.ref** %4, align 8
  %7 = getelementptr inbounds %struct.ref, %struct.ref* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %36

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %31, %11
  %13 = load %struct.ref*, %struct.ref** %5, align 8
  %14 = icmp ne %struct.ref* %13, null
  br i1 %14, label %15, label %35

15:                                               ; preds = %12
  %16 = load %struct.ref*, %struct.ref** %4, align 8
  %17 = getelementptr inbounds %struct.ref, %struct.ref* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.ref*, %struct.ref** %5, align 8
  %20 = getelementptr inbounds %struct.ref, %struct.ref* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @strcmp(i32 %18, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %15
  %25 = load %struct.ref*, %struct.ref** %4, align 8
  %26 = getelementptr inbounds %struct.ref, %struct.ref* %25, i32 0, i32 0
  %27 = load %struct.ref*, %struct.ref** %5, align 8
  %28 = getelementptr inbounds %struct.ref, %struct.ref* %27, i32 0, i32 0
  %29 = call i32 @oidcpy(i32* %26, i32* %28)
  store i32 0, i32* %3, align 4
  br label %36

30:                                               ; preds = %15
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.ref*, %struct.ref** %5, align 8
  %33 = getelementptr inbounds %struct.ref, %struct.ref* %32, i32 0, i32 3
  %34 = load %struct.ref*, %struct.ref** %33, align 8
  store %struct.ref* %34, %struct.ref** %5, align 8
  br label %12

35:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %24, %10
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @oidcpy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
