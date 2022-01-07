; ModuleID = '/home/carl/AnghaBench/git/extr_unpack-trees.c_same.c'
source_filename = "/home/carl/AnghaBench/git/extr_unpack-trees.c_same.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32, i64, i32 }

@CE_CONFLICTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_entry*, %struct.cache_entry*)* @same to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @same(%struct.cache_entry* %0, %struct.cache_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cache_entry*, align 8
  %5 = alloca %struct.cache_entry*, align 8
  store %struct.cache_entry* %0, %struct.cache_entry** %4, align 8
  store %struct.cache_entry* %1, %struct.cache_entry** %5, align 8
  %6 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %7 = icmp ne %struct.cache_entry* %6, null
  %8 = xor i1 %7, true
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %12 = icmp ne %struct.cache_entry* %11, null
  %13 = xor i1 %12, true
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = icmp ne i32 %10, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %55

18:                                               ; preds = %2
  %19 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %20 = icmp ne %struct.cache_entry* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %23 = icmp ne %struct.cache_entry* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %55

25:                                               ; preds = %21, %18
  %26 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %27 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %30 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %28, %31
  %33 = load i32, i32* @CE_CONFLICTED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %55

37:                                               ; preds = %25
  %38 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %39 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %42 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %40, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %37
  %46 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %47 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %46, i32 0, i32 2
  %48 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %49 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %48, i32 0, i32 2
  %50 = call i64 @oideq(i32* %47, i32* %49)
  %51 = icmp ne i64 %50, 0
  br label %52

52:                                               ; preds = %45, %37
  %53 = phi i1 [ false, %37 ], [ %51, %45 ]
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %52, %36, %24, %17
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @oideq(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
