; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/um/extr_ldt.c_init_new_ldt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/um/extr_ldt.c_init_new_ldt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_context = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ldt_entry**, %struct.ldt_entry* }
%struct.ldt_entry = type { i32 }
%struct.user_desc = type { i16 }

@host_ldt_entries = common dso_local global i16* null, align 8
@LDT_DIRECT_ENTRIES = common dso_local global i32 0, align 4
@LDT_ENTRIES_PER_PAGE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @init_new_ldt(%struct.mm_context* %0, %struct.mm_context* %1) #0 {
  %3 = alloca %struct.mm_context*, align 8
  %4 = alloca %struct.mm_context*, align 8
  %5 = alloca %struct.user_desc, align 2
  %6 = alloca i16*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.mm_context* %0, %struct.mm_context** %3, align 8
  store %struct.mm_context* %1, %struct.mm_context** %4, align 8
  store i64 0, i64* %9, align 8
  store i8* null, i8** %10, align 8
  %11 = load %struct.mm_context*, %struct.mm_context** %3, align 8
  %12 = getelementptr inbounds %struct.mm_context, %struct.mm_context* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = call i32 @mutex_init(i32* %14)
  %16 = load %struct.mm_context*, %struct.mm_context** %4, align 8
  %17 = icmp ne %struct.mm_context* %16, null
  br i1 %17, label %52, label %18

18:                                               ; preds = %2
  %19 = call i32 @memset(%struct.user_desc* %5, i32 0, i32 2)
  %20 = call i32 (...) @ldt_get_host_info()
  %21 = load i16*, i16** @host_ldt_entries, align 8
  store i16* %21, i16** %6, align 8
  br label %22

22:                                               ; preds = %44, %18
  %23 = load i16*, i16** %6, align 8
  %24 = load i16, i16* %23, align 2
  %25 = sext i16 %24 to i32
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %47

27:                                               ; preds = %22
  %28 = load i16*, i16** %6, align 8
  %29 = load i16, i16* %28, align 2
  %30 = getelementptr inbounds %struct.user_desc, %struct.user_desc* %5, i32 0, i32 0
  store i16 %29, i16* %30, align 2
  %31 = load %struct.mm_context*, %struct.mm_context** %3, align 8
  %32 = getelementptr inbounds %struct.mm_context, %struct.mm_context* %31, i32 0, i32 1
  %33 = load i16*, i16** %6, align 8
  %34 = getelementptr inbounds i16, i16* %33, i64 1
  %35 = load i16, i16* %34, align 2
  %36 = sext i16 %35 to i32
  %37 = icmp eq i32 %36, -1
  %38 = zext i1 %37 to i32
  %39 = call i64 @write_ldt_entry(i32* %32, i32 1, %struct.user_desc* %5, i8** %10, i32 %38)
  store i64 %39, i64* %9, align 8
  %40 = load i64, i64* %9, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %27
  br label %47

43:                                               ; preds = %27
  br label %44

44:                                               ; preds = %43
  %45 = load i16*, i16** %6, align 8
  %46 = getelementptr inbounds i16, i16* %45, i32 1
  store i16* %46, i16** %6, align 8
  br label %22

47:                                               ; preds = %42, %22
  %48 = load %struct.mm_context*, %struct.mm_context** %3, align 8
  %49 = getelementptr inbounds %struct.mm_context, %struct.mm_context* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  br label %151

52:                                               ; preds = %2
  %53 = load %struct.mm_context*, %struct.mm_context** %4, align 8
  %54 = getelementptr inbounds %struct.mm_context, %struct.mm_context* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = call i32 @mutex_lock(i32* %56)
  %58 = load %struct.mm_context*, %struct.mm_context** %4, align 8
  %59 = getelementptr inbounds %struct.mm_context, %struct.mm_context* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @LDT_DIRECT_ENTRIES, align 4
  %64 = icmp sle i32 %62, %63
  br i1 %64, label %65, label %79

65:                                               ; preds = %52
  %66 = load %struct.mm_context*, %struct.mm_context** %3, align 8
  %67 = getelementptr inbounds %struct.mm_context, %struct.mm_context* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load %struct.ldt_entry*, %struct.ldt_entry** %70, align 8
  %72 = load %struct.mm_context*, %struct.mm_context** %4, align 8
  %73 = getelementptr inbounds %struct.mm_context, %struct.mm_context* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load %struct.ldt_entry*, %struct.ldt_entry** %76, align 8
  %78 = call i32 @memcpy(%struct.ldt_entry* %71, %struct.ldt_entry* %77, i32 8)
  br label %136

79:                                               ; preds = %52
  %80 = load %struct.mm_context*, %struct.mm_context** %4, align 8
  %81 = getelementptr inbounds %struct.mm_context, %struct.mm_context* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @LDT_ENTRIES_PER_PAGE, align 4
  %86 = sdiv i32 %84, %85
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %101, %79
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %7, align 4
  %90 = icmp sgt i32 %88, 0
  br i1 %90, label %91, label %135

91:                                               ; preds = %87
  %92 = load i32, i32* @GFP_KERNEL, align 4
  %93 = load i32, i32* @__GFP_ZERO, align 4
  %94 = or i32 %92, %93
  %95 = call i64 @__get_free_page(i32 %94)
  store i64 %95, i64* %8, align 8
  %96 = load i64, i64* %8, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %91
  %99 = load i64, i64* @ENOMEM, align 8
  %100 = sub nsw i64 0, %99
  store i64 %100, i64* %9, align 8
  br label %135

101:                                              ; preds = %91
  %102 = load i64, i64* %8, align 8
  %103 = inttoptr i64 %102 to %struct.ldt_entry*
  %104 = load %struct.mm_context*, %struct.mm_context** %3, align 8
  %105 = getelementptr inbounds %struct.mm_context, %struct.mm_context* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load %struct.ldt_entry**, %struct.ldt_entry*** %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.ldt_entry*, %struct.ldt_entry** %109, i64 %111
  store %struct.ldt_entry* %103, %struct.ldt_entry** %112, align 8
  %113 = load %struct.mm_context*, %struct.mm_context** %3, align 8
  %114 = getelementptr inbounds %struct.mm_context, %struct.mm_context* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load %struct.ldt_entry**, %struct.ldt_entry*** %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.ldt_entry*, %struct.ldt_entry** %118, i64 %120
  %122 = load %struct.ldt_entry*, %struct.ldt_entry** %121, align 8
  %123 = load %struct.mm_context*, %struct.mm_context** %4, align 8
  %124 = getelementptr inbounds %struct.mm_context, %struct.mm_context* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load %struct.ldt_entry**, %struct.ldt_entry*** %127, align 8
  %129 = load i32, i32* %7, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.ldt_entry*, %struct.ldt_entry** %128, i64 %130
  %132 = load %struct.ldt_entry*, %struct.ldt_entry** %131, align 8
  %133 = load i32, i32* @PAGE_SIZE, align 4
  %134 = call i32 @memcpy(%struct.ldt_entry* %122, %struct.ldt_entry* %132, i32 %133)
  br label %87

135:                                              ; preds = %98, %87
  br label %136

136:                                              ; preds = %135, %65
  %137 = load %struct.mm_context*, %struct.mm_context** %4, align 8
  %138 = getelementptr inbounds %struct.mm_context, %struct.mm_context* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.mm_context*, %struct.mm_context** %3, align 8
  %143 = getelementptr inbounds %struct.mm_context, %struct.mm_context* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  store i32 %141, i32* %145, align 8
  %146 = load %struct.mm_context*, %struct.mm_context** %4, align 8
  %147 = getelementptr inbounds %struct.mm_context, %struct.mm_context* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 1
  %150 = call i32 @mutex_unlock(i32* %149)
  br label %151

151:                                              ; preds = %136, %47
  %152 = load i64, i64* %9, align 8
  ret i64 %152
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @memset(%struct.user_desc*, i32, i32) #1

declare dso_local i32 @ldt_get_host_info(...) #1

declare dso_local i64 @write_ldt_entry(i32*, i32, %struct.user_desc*, i8**, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(%struct.ldt_entry*, %struct.ldt_entry*, i32) #1

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
