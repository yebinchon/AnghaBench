; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_mmap.c_sys_mremap.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_mmap.c_sys_mremap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pt_entry = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"mremap(%#x, %#x, %#x, %d)\00", align 1
@_EINVAL = common dso_local global i32 0, align 4
@MREMAP_MAYMOVE_ = common dso_local global i32 0, align 4
@MREMAP_FIXED_ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"missing MREMAP_FIXED\00", align 1
@current = common dso_local global %struct.TYPE_2__* null, align 8
@_EFAULT = common dso_local global i32 0, align 4
@P_ANONYMOUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"mremap grow on file mappings\00", align 1
@_ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_mremap(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.pt_entry*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @STRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20, i32 %21, i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @PGOFFSET(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* @_EINVAL, align 4
  store i32 %28, i32* %5, align 4
  br label %156

29:                                               ; preds = %4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @MREMAP_MAYMOVE_, align 4
  %32 = load i32, i32* @MREMAP_FIXED_, align 4
  %33 = or i32 %31, %32
  %34 = xor i32 %33, -1
  %35 = and i32 %30, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* @_EINVAL, align 4
  store i32 %38, i32* %5, align 4
  br label %156

39:                                               ; preds = %29
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @MREMAP_FIXED_, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = call i32 @FIXME(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @_EINVAL, align 4
  store i32 %46, i32* %5, align 4
  br label %156

47:                                               ; preds = %39
  %48 = load i32, i32* %7, align 4
  %49 = call i64 @PAGE(i32 %48)
  store i64 %49, i64* %10, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i64 @PAGE(i32 %50)
  store i64 %51, i64* %11, align 8
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* %10, align 8
  %54 = icmp sle i64 %52, %53
  br i1 %54, label %55, label %73

55:                                               ; preds = %47
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i64 @PAGE(i32 %59)
  %61 = load i64, i64* %11, align 8
  %62 = add nsw i64 %60, %61
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* %11, align 8
  %65 = sub nsw i64 %63, %64
  %66 = call i32 @pt_unmap(i32 %58, i64 %62, i64 %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %55
  %70 = load i32, i32* @_EFAULT, align 4
  store i32 %70, i32* %5, align 4
  br label %156

71:                                               ; preds = %55
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %5, align 4
  br label %156

73:                                               ; preds = %47
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i64 @PAGE(i32 %77)
  %79 = call %struct.pt_entry* @mem_pt(i32 %76, i64 %78)
  store %struct.pt_entry* %79, %struct.pt_entry** %13, align 8
  %80 = load %struct.pt_entry*, %struct.pt_entry** %13, align 8
  %81 = icmp eq %struct.pt_entry* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %73
  %83 = load i32, i32* @_EFAULT, align 4
  store i32 %83, i32* %5, align 4
  br label %156

84:                                               ; preds = %73
  %85 = load %struct.pt_entry*, %struct.pt_entry** %13, align 8
  %86 = getelementptr inbounds %struct.pt_entry, %struct.pt_entry* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %6, align 4
  %89 = call i64 @PAGE(i32 %88)
  store i64 %89, i64* %15, align 8
  br label %90

90:                                               ; preds = %114, %84
  %91 = load i64, i64* %15, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i64 @PAGE(i32 %92)
  %94 = load i64, i64* %10, align 8
  %95 = add nsw i64 %93, %94
  %96 = icmp slt i64 %91, %95
  br i1 %96, label %97, label %117

97:                                               ; preds = %90
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i64, i64* %15, align 8
  %102 = call %struct.pt_entry* @mem_pt(i32 %100, i64 %101)
  store %struct.pt_entry* %102, %struct.pt_entry** %13, align 8
  %103 = load %struct.pt_entry*, %struct.pt_entry** %13, align 8
  %104 = icmp eq %struct.pt_entry* %103, null
  br i1 %104, label %105, label %113

105:                                              ; preds = %97
  %106 = load %struct.pt_entry*, %struct.pt_entry** %13, align 8
  %107 = getelementptr inbounds %struct.pt_entry, %struct.pt_entry* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %14, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = load i32, i32* @_EFAULT, align 4
  store i32 %112, i32* %5, align 4
  br label %156

113:                                              ; preds = %105, %97
  br label %114

114:                                              ; preds = %113
  %115 = load i64, i64* %15, align 8
  %116 = add nsw i64 %115, 1
  store i64 %116, i64* %15, align 8
  br label %90

117:                                              ; preds = %90
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* @P_ANONYMOUS, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %117
  %123 = call i32 @FIXME(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %124 = load i32, i32* @_EFAULT, align 4
  store i32 %124, i32* %5, align 4
  br label %156

125:                                              ; preds = %117
  %126 = load i32, i32* %6, align 4
  %127 = call i64 @PAGE(i32 %126)
  %128 = load i64, i64* %10, align 8
  %129 = add nsw i64 %127, %128
  store i64 %129, i64* %16, align 8
  %130 = load i64, i64* %11, align 8
  %131 = load i64, i64* %10, align 8
  %132 = sub nsw i64 %130, %131
  store i64 %132, i64* %17, align 8
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i64, i64* %16, align 8
  %137 = load i64, i64* %17, align 8
  %138 = call i32 @pt_is_hole(i32 %135, i64 %136, i64 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %125
  %141 = load i32, i32* @_ENOMEM, align 4
  store i32 %141, i32* %5, align 4
  br label %156

142:                                              ; preds = %125
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i64, i64* %16, align 8
  %147 = load i64, i64* %17, align 8
  %148 = load i32, i32* %14, align 4
  %149 = call i32 @pt_map_nothing(i32 %145, i64 %146, i64 %147, i32 %148)
  store i32 %149, i32* %18, align 4
  %150 = load i32, i32* %18, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %142
  %153 = load i32, i32* %18, align 4
  store i32 %153, i32* %5, align 4
  br label %156

154:                                              ; preds = %142
  %155 = load i32, i32* %6, align 4
  store i32 %155, i32* %5, align 4
  br label %156

156:                                              ; preds = %154, %152, %140, %122, %111, %82, %71, %69, %44, %37, %27
  %157 = load i32, i32* %5, align 4
  ret i32 %157
}

declare dso_local i32 @STRACE(i8*, i32, i32, i32, i32) #1

declare dso_local i64 @PGOFFSET(i32) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i64 @PAGE(i32) #1

declare dso_local i32 @pt_unmap(i32, i64, i64) #1

declare dso_local %struct.pt_entry* @mem_pt(i32, i64) #1

declare dso_local i32 @pt_is_hole(i32, i64, i64) #1

declare dso_local i32 @pt_map_nothing(i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
