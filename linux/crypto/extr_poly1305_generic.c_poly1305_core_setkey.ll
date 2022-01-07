; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_poly1305_generic.c_poly1305_core_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_poly1305_generic.c_poly1305_core_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.poly1305_key = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @poly1305_core_setkey(%struct.poly1305_key* %0, i32* %1) #0 {
  %3 = alloca %struct.poly1305_key*, align 8
  %4 = alloca i32*, align 8
  store %struct.poly1305_key* %0, %struct.poly1305_key** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = call i32 @get_unaligned_le32(i32* %6)
  %8 = ashr i32 %7, 0
  %9 = and i32 %8, 67108863
  %10 = load %struct.poly1305_key*, %struct.poly1305_key** %3, align 8
  %11 = getelementptr inbounds %struct.poly1305_key, %struct.poly1305_key* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 %9, i32* %13, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 3
  %16 = call i32 @get_unaligned_le32(i32* %15)
  %17 = ashr i32 %16, 2
  %18 = and i32 %17, 67108611
  %19 = load %struct.poly1305_key*, %struct.poly1305_key** %3, align 8
  %20 = getelementptr inbounds %struct.poly1305_key, %struct.poly1305_key* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 %18, i32* %22, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 6
  %25 = call i32 @get_unaligned_le32(i32* %24)
  %26 = ashr i32 %25, 4
  %27 = and i32 %26, 67092735
  %28 = load %struct.poly1305_key*, %struct.poly1305_key** %3, align 8
  %29 = getelementptr inbounds %struct.poly1305_key, %struct.poly1305_key* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  store i32 %27, i32* %31, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 9
  %34 = call i32 @get_unaligned_le32(i32* %33)
  %35 = ashr i32 %34, 6
  %36 = and i32 %35, 66076671
  %37 = load %struct.poly1305_key*, %struct.poly1305_key** %3, align 8
  %38 = getelementptr inbounds %struct.poly1305_key, %struct.poly1305_key* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 3
  store i32 %36, i32* %40, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 12
  %43 = call i32 @get_unaligned_le32(i32* %42)
  %44 = ashr i32 %43, 8
  %45 = and i32 %44, 1048575
  %46 = load %struct.poly1305_key*, %struct.poly1305_key** %3, align 8
  %47 = getelementptr inbounds %struct.poly1305_key, %struct.poly1305_key* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 4
  store i32 %45, i32* %49, align 4
  ret void
}

declare dso_local i32 @get_unaligned_le32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
