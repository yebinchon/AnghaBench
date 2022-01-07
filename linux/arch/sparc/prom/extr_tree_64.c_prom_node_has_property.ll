; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/prom/extr_tree_64.c_prom_node_has_property.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/prom/extr_tree_64.c_prom_node_has_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prom_node_has_property(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca [32 x i8], align 16
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  store i8 0, i8* %7, align 16
  br label %8

8:                                                ; preds = %19, %2
  %9 = load i32, i32* %4, align 4
  %10 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %11 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %12 = call i32 @prom_nextprop(i32 %9, i8* %10, i8* %11)
  %13 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @strcmp(i8* %13, i8* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %8
  store i32 1, i32* %3, align 4
  br label %24

18:                                               ; preds = %8
  br label %19

19:                                               ; preds = %18
  %20 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %21 = load i8, i8* %20, align 16
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %8, label %23

23:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %17
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @prom_nextprop(i32, i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
