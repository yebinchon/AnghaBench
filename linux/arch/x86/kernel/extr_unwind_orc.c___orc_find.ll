; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_unwind_orc.c___orc_find.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_unwind_orc.c___orc_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orc_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.orc_entry* (i32*, %struct.orc_entry*, i32, i64)* @__orc_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.orc_entry* @__orc_find(i32* %0, %struct.orc_entry* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.orc_entry*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.orc_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.orc_entry* %1, %struct.orc_entry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %14 = load i32*, i32** %6, align 8
  store i32* %14, i32** %10, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %8, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = getelementptr inbounds i32, i32* %18, i64 -1
  store i32* %19, i32** %11, align 8
  %20 = load i32*, i32** %10, align 8
  store i32* %20, i32** %12, align 8
  %21 = load i32*, i32** %10, align 8
  store i32* %21, i32** %13, align 8
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %4
  store %struct.orc_entry* null, %struct.orc_entry** %5, align 8
  br label %61

25:                                               ; preds = %4
  br label %26

26:                                               ; preds = %51, %25
  %27 = load i32*, i32** %10, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = icmp ule i32* %27, %28
  br i1 %29, label %30, label %52

30:                                               ; preds = %26
  %31 = load i32*, i32** %10, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = ptrtoint i32* %32 to i64
  %35 = ptrtoint i32* %33 to i64
  %36 = sub i64 %34, %35
  %37 = sdiv exact i64 %36, 4
  %38 = sdiv i64 %37, 2
  %39 = getelementptr inbounds i32, i32* %31, i64 %38
  store i32* %39, i32** %12, align 8
  %40 = load i32*, i32** %12, align 8
  %41 = call i64 @orc_ip(i32* %40)
  %42 = load i64, i64* %9, align 8
  %43 = icmp ule i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %30
  %45 = load i32*, i32** %12, align 8
  store i32* %45, i32** %13, align 8
  %46 = load i32*, i32** %12, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  store i32* %47, i32** %10, align 8
  br label %51

48:                                               ; preds = %30
  %49 = load i32*, i32** %12, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 -1
  store i32* %50, i32** %11, align 8
  br label %51

51:                                               ; preds = %48, %44
  br label %26

52:                                               ; preds = %26
  %53 = load %struct.orc_entry*, %struct.orc_entry** %7, align 8
  %54 = load i32*, i32** %13, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = ptrtoint i32* %54 to i64
  %57 = ptrtoint i32* %55 to i64
  %58 = sub i64 %56, %57
  %59 = sdiv exact i64 %58, 4
  %60 = getelementptr inbounds %struct.orc_entry, %struct.orc_entry* %53, i64 %59
  store %struct.orc_entry* %60, %struct.orc_entry** %5, align 8
  br label %61

61:                                               ; preds = %52, %24
  %62 = load %struct.orc_entry*, %struct.orc_entry** %5, align 8
  ret %struct.orc_entry* %62
}

declare dso_local i64 @orc_ip(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
