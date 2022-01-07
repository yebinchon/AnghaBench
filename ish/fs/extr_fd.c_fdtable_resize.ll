; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_fd.c_fdtable_resize.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_fd.c_fdtable_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdtable = type { i32, %struct.fd**, %struct.fd** }
%struct.fd = type { i32 }

@_ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fdtable*, i32)* @fdtable_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdtable_resize(%struct.fdtable* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fdtable*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fd**, align 8
  %7 = alloca %struct.fd**, align 8
  store %struct.fdtable* %0, %struct.fdtable** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.fdtable*, %struct.fdtable** %4, align 8
  %10 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ugt i32 %8, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = zext i32 %15 to i64
  %17 = mul i64 8, %16
  %18 = trunc i64 %17 to i32
  %19 = call %struct.fd** @malloc(i32 %18)
  store %struct.fd** %19, %struct.fd*** %6, align 8
  %20 = load %struct.fd**, %struct.fd*** %6, align 8
  %21 = icmp eq %struct.fd** %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @_ENOMEM, align 4
  store i32 %23, i32* %3, align 4
  br label %94

24:                                               ; preds = %2
  %25 = load %struct.fd**, %struct.fd*** %6, align 8
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = mul i64 8, %27
  %29 = trunc i64 %28 to i32
  %30 = call i32 @memset(%struct.fd** %25, i32 0, i32 %29)
  %31 = load %struct.fdtable*, %struct.fdtable** %4, align 8
  %32 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %31, i32 0, i32 2
  %33 = load %struct.fd**, %struct.fd*** %32, align 8
  %34 = icmp ne %struct.fd** %33, null
  br i1 %34, label %35, label %47

35:                                               ; preds = %24
  %36 = load %struct.fd**, %struct.fd*** %6, align 8
  %37 = load %struct.fdtable*, %struct.fdtable** %4, align 8
  %38 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %37, i32 0, i32 2
  %39 = load %struct.fd**, %struct.fd*** %38, align 8
  %40 = load %struct.fdtable*, %struct.fdtable** %4, align 8
  %41 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = zext i32 %42 to i64
  %44 = mul i64 8, %43
  %45 = trunc i64 %44 to i32
  %46 = call i32 @memcpy(%struct.fd** %36, %struct.fd** %39, i32 %45)
  br label %47

47:                                               ; preds = %35, %24
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @BITS_SIZE(i32 %48)
  %50 = call %struct.fd** @malloc(i32 %49)
  store %struct.fd** %50, %struct.fd*** %7, align 8
  %51 = load %struct.fd**, %struct.fd*** %7, align 8
  %52 = icmp eq %struct.fd** %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load %struct.fd**, %struct.fd*** %6, align 8
  %55 = call i32 @free(%struct.fd** %54)
  %56 = load i32, i32* @_ENOMEM, align 4
  store i32 %56, i32* %3, align 4
  br label %94

57:                                               ; preds = %47
  %58 = load %struct.fd**, %struct.fd*** %7, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @BITS_SIZE(i32 %59)
  %61 = call i32 @memset(%struct.fd** %58, i32 0, i32 %60)
  %62 = load %struct.fdtable*, %struct.fdtable** %4, align 8
  %63 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %62, i32 0, i32 1
  %64 = load %struct.fd**, %struct.fd*** %63, align 8
  %65 = icmp ne %struct.fd** %64, null
  br i1 %65, label %66, label %76

66:                                               ; preds = %57
  %67 = load %struct.fd**, %struct.fd*** %7, align 8
  %68 = load %struct.fdtable*, %struct.fdtable** %4, align 8
  %69 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %68, i32 0, i32 1
  %70 = load %struct.fd**, %struct.fd*** %69, align 8
  %71 = load %struct.fdtable*, %struct.fdtable** %4, align 8
  %72 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @BITS_SIZE(i32 %73)
  %75 = call i32 @memcpy(%struct.fd** %67, %struct.fd** %70, i32 %74)
  br label %76

76:                                               ; preds = %66, %57
  %77 = load %struct.fdtable*, %struct.fdtable** %4, align 8
  %78 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %77, i32 0, i32 2
  %79 = load %struct.fd**, %struct.fd*** %78, align 8
  %80 = call i32 @free(%struct.fd** %79)
  %81 = load %struct.fd**, %struct.fd*** %6, align 8
  %82 = load %struct.fdtable*, %struct.fdtable** %4, align 8
  %83 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %82, i32 0, i32 2
  store %struct.fd** %81, %struct.fd*** %83, align 8
  %84 = load %struct.fdtable*, %struct.fdtable** %4, align 8
  %85 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %84, i32 0, i32 1
  %86 = load %struct.fd**, %struct.fd*** %85, align 8
  %87 = call i32 @free(%struct.fd** %86)
  %88 = load %struct.fd**, %struct.fd*** %7, align 8
  %89 = load %struct.fdtable*, %struct.fdtable** %4, align 8
  %90 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %89, i32 0, i32 1
  store %struct.fd** %88, %struct.fd*** %90, align 8
  %91 = load i32, i32* %5, align 4
  %92 = load %struct.fdtable*, %struct.fdtable** %4, align 8
  %93 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %76, %53, %22
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.fd** @malloc(i32) #1

declare dso_local i32 @memset(%struct.fd**, i32, i32) #1

declare dso_local i32 @memcpy(%struct.fd**, %struct.fd**, i32) #1

declare dso_local i32 @BITS_SIZE(i32) #1

declare dso_local i32 @free(%struct.fd**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
