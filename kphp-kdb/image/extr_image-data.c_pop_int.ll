; ModuleID = '/home/carl/AnghaBench/kphp-kdb/image/extr_image-data.c_pop_int.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/image/extr_image-data.c_pop_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.forth_stack = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ft_int = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.forth_stack*, i32*, i8*)* @pop_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pop_int(%struct.forth_stack* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.forth_stack*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  store %struct.forth_stack* %0, %struct.forth_stack** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %9 = load i32, i32* @ft_int, align 4
  %10 = load i8*, i8** %7, align 8
  %11 = call i32 @check_type(%struct.forth_stack* %8, i32 %9, i8* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %27

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %17 = getelementptr inbounds %struct.forth_stack, %struct.forth_stack* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %20 = getelementptr inbounds %struct.forth_stack, %struct.forth_stack* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %20, align 8
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @memcpy(i32* %15, i32* %25, i32 4)
  store i32 1, i32* %4, align 4
  br label %27

27:                                               ; preds = %14, %13
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @check_type(%struct.forth_stack*, i32, i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
