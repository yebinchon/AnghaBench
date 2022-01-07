; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_pageattr.c_change_page_attr_set_clr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_pageattr.c_change_page_attr_set_clr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.cpa_data = type { i64*, i32, i32, i32, i64, i8*, i8*, %struct.page** }

@CPA_ARRAY = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@CPA_PAGES_ARRAY = common dso_local global i32 0, align 4
@_PAGE_NX = common dso_local global i32 0, align 4
@CPA_NO_CHECK_ALIAS = common dso_local global i32 0, align 4
@CPA_FLUSHTLB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32, i8*, i8*, i32, i32, %struct.page**)* @change_page_attr_set_clr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @change_page_attr_set_clr(i64* %0, i32 %1, i8* %2, i8* %3, i32 %4, i32 %5, %struct.page** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.page**, align 8
  %16 = alloca %struct.cpa_data, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i64* %0, i64** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.page** %6, %struct.page*** %15, align 8
  %21 = call i32 @memset(%struct.cpa_data* %16, i32 0, i32 56)
  %22 = load i8*, i8** %11, align 8
  %23 = call i8* @canon_pgprot(i8* %22)
  store i8* %23, i8** %11, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = call i32 @pgprot_val(i8* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %7
  %28 = load i8*, i8** %12, align 8
  %29 = call i32 @pgprot_val(i8* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  store i32 0, i32* %8, align 4
  br label %157

35:                                               ; preds = %31, %27, %7
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* @CPA_ARRAY, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %69

40:                                               ; preds = %35
  store i32 0, i32* %20, align 4
  br label %41

41:                                               ; preds = %65, %40
  %42 = load i32, i32* %20, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %68

45:                                               ; preds = %41
  %46 = load i64*, i64** %9, align 8
  %47 = load i32, i32* %20, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @PAGE_MASK, align 8
  %52 = xor i64 %51, -1
  %53 = and i64 %50, %52
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %45
  %56 = load i64, i64* @PAGE_MASK, align 8
  %57 = load i64*, i64** %9, align 8
  %58 = load i32, i32* %20, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = and i64 %61, %56
  store i64 %62, i64* %60, align 8
  %63 = call i32 @WARN_ON_ONCE(i32 1)
  br label %64

64:                                               ; preds = %55, %45
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %20, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %20, align 4
  br label %41

68:                                               ; preds = %41
  br label %89

69:                                               ; preds = %35
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* @CPA_PAGES_ARRAY, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %88, label %74

74:                                               ; preds = %69
  %75 = load i64*, i64** %9, align 8
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @PAGE_MASK, align 8
  %78 = xor i64 %77, -1
  %79 = and i64 %76, %78
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %74
  %82 = load i64, i64* @PAGE_MASK, align 8
  %83 = load i64*, i64** %9, align 8
  %84 = load i64, i64* %83, align 8
  %85 = and i64 %84, %82
  store i64 %85, i64* %83, align 8
  %86 = call i32 @WARN_ON_ONCE(i32 1)
  br label %87

87:                                               ; preds = %81, %74
  br label %88

88:                                               ; preds = %87, %69
  br label %89

89:                                               ; preds = %88, %68
  %90 = call i32 (...) @kmap_flush_unused()
  %91 = call i32 (...) @vm_unmap_aliases()
  %92 = load i64*, i64** %9, align 8
  %93 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %16, i32 0, i32 0
  store i64* %92, i64** %93, align 8
  %94 = load %struct.page**, %struct.page*** %15, align 8
  %95 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %16, i32 0, i32 7
  store %struct.page** %94, %struct.page*** %95, align 8
  %96 = load i32, i32* %10, align 4
  %97 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %16, i32 0, i32 1
  store i32 %96, i32* %97, align 8
  %98 = load i8*, i8** %11, align 8
  %99 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %16, i32 0, i32 6
  store i8* %98, i8** %99, align 8
  %100 = load i8*, i8** %12, align 8
  %101 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %16, i32 0, i32 5
  store i8* %100, i8** %101, align 8
  %102 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %16, i32 0, i32 2
  store i32 0, i32* %102, align 4
  %103 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %16, i32 0, i32 4
  store i64 0, i64* %103, align 8
  %104 = load i32, i32* %13, align 4
  %105 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %16, i32 0, i32 3
  store i32 %104, i32* %105, align 8
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* @CPA_ARRAY, align 4
  %108 = load i32, i32* @CPA_PAGES_ARRAY, align 4
  %109 = or i32 %107, %108
  %110 = and i32 %106, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %89
  %113 = load i32, i32* %14, align 4
  %114 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %16, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %113
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %112, %89
  %118 = load i8*, i8** %11, align 8
  %119 = call i32 @pgprot_val(i8* %118)
  %120 = load i8*, i8** %12, align 8
  %121 = call i32 @pgprot_val(i8* %120)
  %122 = or i32 %119, %121
  %123 = load i32, i32* @_PAGE_NX, align 4
  %124 = icmp ne i32 %122, %123
  %125 = zext i1 %124 to i32
  store i32 %125, i32* %19, align 4
  %126 = load i32, i32* %14, align 4
  %127 = load i32, i32* @CPA_NO_CHECK_ALIAS, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %117
  store i32 0, i32* %19, align 4
  br label %131

131:                                              ; preds = %130, %117
  %132 = load i32, i32* %19, align 4
  %133 = call i32 @__change_page_attr_set_clr(%struct.cpa_data* %16, i32 %132)
  store i32 %133, i32* %17, align 4
  %134 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %16, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @CPA_FLUSHTLB, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %131
  br label %155

140:                                              ; preds = %131
  %141 = load i8*, i8** %11, align 8
  %142 = call i32 @pgprot2cachemode(i8* %141)
  %143 = icmp ne i32 %142, 0
  %144 = xor i1 %143, true
  %145 = xor i1 %144, true
  %146 = zext i1 %145 to i32
  store i32 %146, i32* %18, align 4
  %147 = load i32, i32* %17, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %140
  %150 = load i32, i32* %18, align 4
  %151 = call i32 @cpa_flush_all(i32 %150)
  br label %155

152:                                              ; preds = %140
  %153 = load i32, i32* %18, align 4
  %154 = call i32 @cpa_flush(%struct.cpa_data* %16, i32 %153)
  br label %155

155:                                              ; preds = %152, %149, %139
  %156 = load i32, i32* %17, align 4
  store i32 %156, i32* %8, align 4
  br label %157

157:                                              ; preds = %155, %34
  %158 = load i32, i32* %8, align 4
  ret i32 %158
}

declare dso_local i32 @memset(%struct.cpa_data*, i32, i32) #1

declare dso_local i8* @canon_pgprot(i8*) #1

declare dso_local i32 @pgprot_val(i8*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @kmap_flush_unused(...) #1

declare dso_local i32 @vm_unmap_aliases(...) #1

declare dso_local i32 @__change_page_attr_set_clr(%struct.cpa_data*, i32) #1

declare dso_local i32 @pgprot2cachemode(i8*) #1

declare dso_local i32 @cpa_flush_all(i32) #1

declare dso_local i32 @cpa_flush(%struct.cpa_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
