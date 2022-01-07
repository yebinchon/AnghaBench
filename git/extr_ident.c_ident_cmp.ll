; ModuleID = '/home/carl/AnghaBench/git/extr_ident.c_ident_cmp.c'
source_filename = "/home/carl/AnghaBench/git/extr_ident.c_ident_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_split = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ident_cmp(%struct.ident_split* %0, %struct.ident_split* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ident_split*, align 8
  %5 = alloca %struct.ident_split*, align 8
  %6 = alloca i32, align 4
  store %struct.ident_split* %0, %struct.ident_split** %4, align 8
  store %struct.ident_split* %1, %struct.ident_split** %5, align 8
  %7 = load %struct.ident_split*, %struct.ident_split** %4, align 8
  %8 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.ident_split*, %struct.ident_split** %4, align 8
  %11 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ident_split*, %struct.ident_split** %5, align 8
  %14 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ident_split*, %struct.ident_split** %5, align 8
  %17 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @buf_cmp(i32 %9, i32 %12, i32 %15, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %38

24:                                               ; preds = %2
  %25 = load %struct.ident_split*, %struct.ident_split** %4, align 8
  %26 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ident_split*, %struct.ident_split** %4, align 8
  %29 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ident_split*, %struct.ident_split** %5, align 8
  %32 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ident_split*, %struct.ident_split** %5, align 8
  %35 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @buf_cmp(i32 %27, i32 %30, i32 %33, i32 %36)
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %24, %22
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @buf_cmp(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
