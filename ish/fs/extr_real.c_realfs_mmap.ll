; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_real.c_realfs_mmap.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_real.c_realfs_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { i32 }
%struct.mem = type { i32 }

@MMAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MMAP_SHARED = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@P_WRITE = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@real_page_size = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @realfs_mmap(%struct.fd* %0, %struct.mem* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.fd*, align 8
  %10 = alloca %struct.mem*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store %struct.fd* %0, %struct.fd** %9, align 8
  store %struct.mem* %1, %struct.mem** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %80

24:                                               ; preds = %7
  store i32 0, i32* %16, align 4
  %25 = load i32, i32* %15, align 4
  %26 = load i32, i32* @MMAP_PRIVATE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* @MAP_PRIVATE, align 4
  %31 = load i32, i32* %16, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %16, align 4
  br label %33

33:                                               ; preds = %29, %24
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* @MMAP_SHARED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32, i32* @MAP_SHARED, align 4
  %40 = load i32, i32* %16, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %16, align 4
  br label %42

42:                                               ; preds = %38, %33
  %43 = load i32, i32* @PROT_READ, align 4
  store i32 %43, i32* %17, align 4
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* @P_WRITE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i32, i32* @PROT_WRITE, align 4
  %50 = load i32, i32* %17, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %17, align 4
  br label %52

52:                                               ; preds = %48, %42
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @real_page_size, align 4
  %55 = sdiv i32 %53, %54
  %56 = load i32, i32* @real_page_size, align 4
  %57 = mul nsw i32 %55, %56
  store i32 %57, i32* %18, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %18, align 4
  %60 = sub nsw i32 %58, %59
  store i32 %60, i32* %19, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @PAGE_SIZE, align 4
  %63 = mul nsw i32 %61, %62
  %64 = load i32, i32* %19, align 4
  %65 = add nsw i32 %63, %64
  %66 = load i32, i32* %17, align 4
  %67 = load i32, i32* %16, align 4
  %68 = load %struct.fd*, %struct.fd** %9, align 8
  %69 = getelementptr inbounds %struct.fd, %struct.fd* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %18, align 4
  %72 = call i8* @mmap(i32* null, i32 %65, i32 %66, i32 %67, i32 %70, i32 %71)
  store i8* %72, i8** %20, align 8
  %73 = load %struct.mem*, %struct.mem** %10, align 8
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %12, align 4
  %76 = load i8*, i8** %20, align 8
  %77 = load i32, i32* %19, align 4
  %78 = load i32, i32* %14, align 4
  %79 = call i32 @pt_map(%struct.mem* %73, i32 %74, i32 %75, i8* %76, i32 %77, i32 %78)
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %52, %23
  %81 = load i32, i32* %8, align 4
  ret i32 %81
}

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pt_map(%struct.mem*, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
