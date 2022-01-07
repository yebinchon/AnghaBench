; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_simple_alloc.c_simple_realloc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_simple_alloc.c_simple_realloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alloc_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64)* @simple_realloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @simple_realloc(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.alloc_info*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @simple_free(i8* %11)
  store i8* null, i8** %3, align 8
  br label %45

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i64, i64* %5, align 8
  %18 = call i8* @simple_malloc(i64 %17)
  store i8* %18, i8** %3, align 8
  br label %45

19:                                               ; preds = %13
  %20 = load i8*, i8** %4, align 8
  %21 = call %struct.alloc_info* @simple_find_entry(i8* %20)
  store %struct.alloc_info* %21, %struct.alloc_info** %6, align 8
  %22 = load %struct.alloc_info*, %struct.alloc_info** %6, align 8
  %23 = icmp eq %struct.alloc_info* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i8* null, i8** %3, align 8
  br label %45

25:                                               ; preds = %19
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.alloc_info*, %struct.alloc_info** %6, align 8
  %28 = getelementptr inbounds %struct.alloc_info, %struct.alloc_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ule i64 %26, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i8*, i8** %4, align 8
  store i8* %32, i8** %3, align 8
  br label %45

33:                                               ; preds = %25
  %34 = load i64, i64* %5, align 8
  %35 = call i8* @simple_malloc(i64 %34)
  store i8* %35, i8** %7, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = load %struct.alloc_info*, %struct.alloc_info** %6, align 8
  %39 = getelementptr inbounds %struct.alloc_info, %struct.alloc_info* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @memcpy(i8* %36, i8* %37, i64 %40)
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @simple_free(i8* %42)
  %44 = load i8*, i8** %7, align 8
  store i8* %44, i8** %3, align 8
  br label %45

45:                                               ; preds = %33, %31, %24, %16, %10
  %46 = load i8*, i8** %3, align 8
  ret i8* %46
}

declare dso_local i32 @simple_free(i8*) #1

declare dso_local i8* @simple_malloc(i64) #1

declare dso_local %struct.alloc_info* @simple_find_entry(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
