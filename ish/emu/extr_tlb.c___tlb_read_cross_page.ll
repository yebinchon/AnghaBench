; ModuleID = '/home/carl/AnghaBench/ish/emu/extr_tlb.c___tlb_read_cross_page.c'
source_filename = "/home/carl/AnghaBench/ish/emu/extr_tlb.c___tlb_read_cross_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlb = type { i32 }

@PAGE_BITS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__tlb_read_cross_page(%struct.tlb* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tlb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.tlb* %0, %struct.tlb** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.tlb*, %struct.tlb** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i8* @__tlb_read_ptr(%struct.tlb* %13, i32 %14)
  store i8* %15, i8** %10, align 8
  %16 = load %struct.tlb*, %struct.tlb** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @PAGE(i32 %17)
  %19 = add nsw i32 %18, 1
  %20 = load i32, i32* @PAGE_BITS, align 4
  %21 = shl i32 %19, %20
  %22 = call i8* @__tlb_read_ptr(%struct.tlb* %16, i32 %21)
  store i8* %22, i8** %11, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i8*, i8** %11, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %4
  store i32 0, i32* %5, align 4
  br label %55

29:                                               ; preds = %25
  %30 = load i64, i64* @PAGE_SIZE, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i64 @PGOFFSET(i32 %31)
  %33 = sub i64 %30, %32
  store i64 %33, i64* %12, align 8
  %34 = load i64, i64* %12, align 8
  %35 = load i32, i32* %9, align 4
  %36 = zext i32 %35 to i64
  %37 = icmp ult i64 %34, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i8*, i8** %8, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load i64, i64* %12, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @memcpy(i8* %40, i8* %41, i32 %43)
  %45 = load i8*, i8** %8, align 8
  %46 = load i64, i64* %12, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  %48 = load i8*, i8** %11, align 8
  %49 = load i32, i32* %9, align 4
  %50 = zext i32 %49 to i64
  %51 = load i64, i64* %12, align 8
  %52 = sub i64 %50, %51
  %53 = trunc i64 %52 to i32
  %54 = call i32 @memcpy(i8* %47, i8* %48, i32 %53)
  store i32 1, i32* %5, align 4
  br label %55

55:                                               ; preds = %29, %28
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i8* @__tlb_read_ptr(%struct.tlb*, i32) #1

declare dso_local i32 @PAGE(i32) #1

declare dso_local i64 @PGOFFSET(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
