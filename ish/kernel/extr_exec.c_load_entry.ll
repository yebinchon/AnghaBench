; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_exec.c_load_entry.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_exec.c_load_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.prg_header = type { i64, i64, i64, i64, i32 }
%struct.fd = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.fd*, i32, i32, i32, i64, i32, i32)* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32 }

@P_READ = common dso_local global i32 0, align 4
@PH_W = common dso_local global i32 0, align 4
@P_WRITE = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_8__* null, align 8
@MMAP_PRIVATE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.prg_header*, i64, %struct.fd*)* @load_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_entry(%struct.prg_header* byval(%struct.prg_header) align 8 %0, i64 %1, %struct.fd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.fd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i64 %1, i64* %5, align 8
  store %struct.fd* %2, %struct.fd** %6, align 8
  %16 = getelementptr inbounds %struct.prg_header, %struct.prg_header* %0, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = add nsw i64 %17, %18
  store i64 %19, i64* %8, align 8
  %20 = getelementptr inbounds %struct.prg_header, %struct.prg_header* %0, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %9, align 8
  %22 = getelementptr inbounds %struct.prg_header, %struct.prg_header* %0, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %10, align 8
  %24 = getelementptr inbounds %struct.prg_header, %struct.prg_header* %0, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %11, align 8
  %26 = load i32, i32* @P_READ, align 4
  store i32 %26, i32* %12, align 4
  %27 = getelementptr inbounds %struct.prg_header, %struct.prg_header* %0, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @PH_W, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %3
  %33 = load i32, i32* @P_WRITE, align 4
  %34 = load i32, i32* %12, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %12, align 4
  br label %36

36:                                               ; preds = %32, %3
  %37 = load %struct.fd*, %struct.fd** %6, align 8
  %38 = getelementptr inbounds %struct.fd, %struct.fd* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32 (%struct.fd*, i32, i32, i32, i64, i32, i32)*, i32 (%struct.fd*, i32, i32, i32, i64, i32, i32)** %40, align 8
  %42 = load %struct.fd*, %struct.fd** %6, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @PAGE(i64 %46)
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call i64 @PGOFFSET(i64 %49)
  %51 = add nsw i64 %48, %50
  %52 = call i32 @PAGE_ROUND_UP(i64 %51)
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* %8, align 8
  %55 = call i64 @PGOFFSET(i64 %54)
  %56 = sub nsw i64 %53, %55
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @MMAP_PRIVATE, align 4
  %59 = call i32 %41(%struct.fd* %42, i32 %45, i32 %47, i32 %52, i64 %56, i32 %57, i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %36
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %4, align 4
  br label %144

63:                                               ; preds = %36
  %64 = load %struct.fd*, %struct.fd** %6, align 8
  %65 = call i32 @fd_retain(%struct.fd* %64)
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i64, i64* %8, align 8
  %70 = call i32 @PAGE(i64 %69)
  %71 = call %struct.TYPE_7__* @mem_pt(i32 %68, i32 %70)
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  store i32 %65, i32* %74, align 8
  %75 = load i64, i64* %9, align 8
  %76 = load i64, i64* %8, align 8
  %77 = call i64 @PGOFFSET(i64 %76)
  %78 = sub nsw i64 %75, %77
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i64, i64* %8, align 8
  %83 = call i32 @PAGE(i64 %82)
  %84 = call %struct.TYPE_7__* @mem_pt(i32 %81, i32 %83)
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  store i64 %78, i64* %87, align 8
  %88 = load i64, i64* %10, align 8
  %89 = load i64, i64* %11, align 8
  %90 = icmp sgt i64 %88, %89
  br i1 %90, label %91, label %143

91:                                               ; preds = %63
  %92 = load i64, i64* %10, align 8
  %93 = load i64, i64* %11, align 8
  %94 = sub nsw i64 %92, %93
  store i64 %94, i64* %13, align 8
  %95 = load i64, i64* %8, align 8
  %96 = load i64, i64* %11, align 8
  %97 = add nsw i64 %95, %96
  store i64 %97, i64* %14, align 8
  %98 = load i64, i64* @PAGE_SIZE, align 8
  %99 = load i64, i64* %14, align 8
  %100 = call i64 @PGOFFSET(i64 %99)
  %101 = sub nsw i64 %98, %100
  store i64 %101, i64* %15, align 8
  %102 = load i64, i64* %15, align 8
  %103 = load i64, i64* @PAGE_SIZE, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %91
  store i64 0, i64* %15, align 8
  br label %106

106:                                              ; preds = %105, %91
  %107 = load i64, i64* %15, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load i64, i64* %14, align 8
  %111 = load i64, i64* %15, align 8
  %112 = call i32 @user_memset(i64 %110, i32 0, i64 %111)
  br label %113

113:                                              ; preds = %109, %106
  %114 = load i64, i64* %15, align 8
  %115 = load i64, i64* %13, align 8
  %116 = icmp sgt i64 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  %118 = load i64, i64* %13, align 8
  store i64 %118, i64* %15, align 8
  br label %119

119:                                              ; preds = %117, %113
  %120 = load i64, i64* %13, align 8
  %121 = load i64, i64* %15, align 8
  %122 = sub nsw i64 %120, %121
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %142

124:                                              ; preds = %119
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i64, i64* %8, align 8
  %129 = load i64, i64* %11, align 8
  %130 = add nsw i64 %128, %129
  %131 = call i32 @PAGE_ROUND_UP(i64 %130)
  %132 = load i64, i64* %13, align 8
  %133 = load i64, i64* %15, align 8
  %134 = sub nsw i64 %132, %133
  %135 = call i32 @PAGE_ROUND_UP(i64 %134)
  %136 = load i32, i32* %12, align 4
  %137 = call i32 @pt_map_nothing(i32 %127, i32 %131, i32 %135, i32 %136)
  store i32 %137, i32* %7, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %124
  %140 = load i32, i32* %7, align 4
  store i32 %140, i32* %4, align 4
  br label %144

141:                                              ; preds = %124
  br label %142

142:                                              ; preds = %141, %119
  br label %143

143:                                              ; preds = %142, %63
  store i32 0, i32* %4, align 4
  br label %144

144:                                              ; preds = %143, %139, %61
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local i32 @PAGE(i64) #1

declare dso_local i32 @PAGE_ROUND_UP(i64) #1

declare dso_local i64 @PGOFFSET(i64) #1

declare dso_local i32 @fd_retain(%struct.fd*) #1

declare dso_local %struct.TYPE_7__* @mem_pt(i32, i32) #1

declare dso_local i32 @user_memset(i64, i32, i64) #1

declare dso_local i32 @pt_map_nothing(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
