; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_mmap.c_do_mmap.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_mmap.c_do_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.fd = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.fd*, i32, i64, i32, i32, i32, i32)* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@_EINVAL = common dso_local global i64 0, align 8
@MMAP_FIXED = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_8__* null, align 8
@BAD_PAGE = common dso_local global i64 0, align 8
@_ENOMEM = common dso_local global i64 0, align 8
@MMAP_SHARED = common dso_local global i32 0, align 4
@P_SHARED = common dso_local global i32 0, align 4
@MMAP_ANONYMOUS = common dso_local global i32 0, align 4
@_EBADF = common dso_local global i64 0, align 8
@_ENODEV = common dso_local global i64 0, align 8
@PAGE_BITS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32, i32, i32, i32, i32)* @do_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @do_mmap(i64 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.fd*, align 8
  store i64 %0, i64* %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @PAGE_ROUND_UP(i32 %18)
  store i32 %19, i32* %15, align 4
  %20 = load i64, i64* %8, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %6
  %23 = load i64, i64* %8, align 8
  %24 = call i64 @PGOFFSET(i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i64, i64* @_EINVAL, align 8
  store i64 %27, i64* %7, align 8
  br label %147

28:                                               ; preds = %22
  %29 = load i64, i64* %8, align 8
  %30 = call i64 @PAGE(i64 %29)
  store i64 %30, i64* %16, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @MMAP_FIXED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %28
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %16, align 8
  %40 = load i32, i32* %15, align 4
  %41 = call i32 @pt_is_hole(i32 %38, i64 %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %35
  store i64 0, i64* %8, align 8
  br label %44

44:                                               ; preds = %43, %35, %28
  br label %45

45:                                               ; preds = %44, %6
  %46 = load i64, i64* %8, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %45
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %15, align 4
  %53 = call i64 @pt_find_hole(i32 %51, i32 %52)
  store i64 %53, i64* %16, align 8
  %54 = load i64, i64* %16, align 8
  %55 = load i64, i64* @BAD_PAGE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = load i64, i64* @_ENOMEM, align 8
  store i64 %58, i64* %7, align 8
  br label %147

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59, %45
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @MMAP_SHARED, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* @P_SHARED, align 4
  %67 = load i32, i32* %10, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %65, %60
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @MMAP_ANONYMOUS, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %69
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i64, i64* %16, align 8
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @pt_map_nothing(i32 %77, i64 %78, i32 %79, i32 %80)
  store i32 %81, i32* %14, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %74
  %84 = load i32, i32* %14, align 4
  %85 = sext i32 %84 to i64
  store i64 %85, i64* %7, align 8
  br label %147

86:                                               ; preds = %74
  br label %143

87:                                               ; preds = %69
  %88 = load i32, i32* %12, align 4
  %89 = call %struct.fd* @f_get(i32 %88)
  store %struct.fd* %89, %struct.fd** %17, align 8
  %90 = load %struct.fd*, %struct.fd** %17, align 8
  %91 = icmp eq %struct.fd* %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load i64, i64* @_EBADF, align 8
  store i64 %93, i64* %7, align 8
  br label %147

94:                                               ; preds = %87
  %95 = load %struct.fd*, %struct.fd** %17, align 8
  %96 = getelementptr inbounds %struct.fd, %struct.fd* %95, i32 0, i32 0
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32 (%struct.fd*, i32, i64, i32, i32, i32, i32)*, i32 (%struct.fd*, i32, i64, i32, i32, i32, i32)** %98, align 8
  %100 = icmp eq i32 (%struct.fd*, i32, i64, i32, i32, i32, i32)* %99, null
  br i1 %100, label %101, label %103

101:                                              ; preds = %94
  %102 = load i64, i64* @_ENODEV, align 8
  store i64 %102, i64* %7, align 8
  br label %147

103:                                              ; preds = %94
  %104 = load %struct.fd*, %struct.fd** %17, align 8
  %105 = getelementptr inbounds %struct.fd, %struct.fd* %104, i32 0, i32 0
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32 (%struct.fd*, i32, i64, i32, i32, i32, i32)*, i32 (%struct.fd*, i32, i64, i32, i32, i32, i32)** %107, align 8
  %109 = load %struct.fd*, %struct.fd** %17, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i64, i64* %16, align 8
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* %11, align 4
  %118 = call i32 %108(%struct.fd* %109, i32 %112, i64 %113, i32 %114, i32 %115, i32 %116, i32 %117)
  store i32 %118, i32* %14, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %103
  %121 = load i32, i32* %14, align 4
  %122 = sext i32 %121 to i64
  store i64 %122, i64* %7, align 8
  br label %147

123:                                              ; preds = %103
  %124 = load %struct.fd*, %struct.fd** %17, align 8
  %125 = call i32 @fd_retain(%struct.fd* %124)
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i64, i64* %16, align 8
  %130 = call %struct.TYPE_7__* @mem_pt(i32 %128, i64 %129)
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  store i32 %125, i32* %133, align 4
  %134 = load i32, i32* %13, align 4
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i64, i64* %16, align 8
  %139 = call %struct.TYPE_7__* @mem_pt(i32 %137, i64 %138)
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  store i32 %134, i32* %142, align 4
  br label %143

143:                                              ; preds = %123, %86
  %144 = load i64, i64* %16, align 8
  %145 = load i64, i64* @PAGE_BITS, align 8
  %146 = shl i64 %144, %145
  store i64 %146, i64* %7, align 8
  br label %147

147:                                              ; preds = %143, %120, %101, %92, %83, %57, %26
  %148 = load i64, i64* %7, align 8
  ret i64 %148
}

declare dso_local i32 @PAGE_ROUND_UP(i32) #1

declare dso_local i64 @PGOFFSET(i64) #1

declare dso_local i64 @PAGE(i64) #1

declare dso_local i32 @pt_is_hole(i32, i64, i32) #1

declare dso_local i64 @pt_find_hole(i32, i32) #1

declare dso_local i32 @pt_map_nothing(i32, i64, i32, i32) #1

declare dso_local %struct.fd* @f_get(i32) #1

declare dso_local i32 @fd_retain(%struct.fd*) #1

declare dso_local %struct.TYPE_7__* @mem_pt(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
