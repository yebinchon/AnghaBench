; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_mca.c_mca_insert_tr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_mca.c_mca_insert_tr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ia64_tr_entry = type { i32, i32, i32, i32 }

@ia64_idtrs = common dso_local global %struct.ia64_tr_entry** null, align 8
@IA64_TR_ALLOC_BASE = common dso_local global i32 0, align 4
@IA64_TR_ALLOC_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mca_insert_tr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mca_insert_tr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ia64_tr_entry*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = call i32 (...) @smp_processor_id()
  store i32 %8, i32* %7, align 4
  %9 = load %struct.ia64_tr_entry**, %struct.ia64_tr_entry*** @ia64_idtrs, align 8
  %10 = load i32, i32* %7, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.ia64_tr_entry*, %struct.ia64_tr_entry** %9, i64 %11
  %13 = load %struct.ia64_tr_entry*, %struct.ia64_tr_entry** %12, align 8
  %14 = icmp ne %struct.ia64_tr_entry* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %126

16:                                               ; preds = %1
  %17 = call i64 (...) @ia64_clear_ic()
  store i64 %17, i64* %6, align 8
  %18 = load i32, i32* @IA64_TR_ALLOC_BASE, align 4
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %120, %16
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @IA64_TR_ALLOC_MAX, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %123

23:                                               ; preds = %19
  %24 = load %struct.ia64_tr_entry**, %struct.ia64_tr_entry*** @ia64_idtrs, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.ia64_tr_entry*, %struct.ia64_tr_entry** %24, i64 %26
  %28 = load %struct.ia64_tr_entry*, %struct.ia64_tr_entry** %27, align 8
  %29 = load i32, i32* %2, align 4
  %30 = sub nsw i32 %29, 1
  %31 = load i32, i32* @IA64_TR_ALLOC_MAX, align 4
  %32 = mul nsw i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.ia64_tr_entry, %struct.ia64_tr_entry* %28, i64 %33
  store %struct.ia64_tr_entry* %34, %struct.ia64_tr_entry** %5, align 8
  %35 = load %struct.ia64_tr_entry*, %struct.ia64_tr_entry** %5, align 8
  %36 = getelementptr inbounds %struct.ia64_tr_entry, %struct.ia64_tr_entry* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 1
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %119

40:                                               ; preds = %23
  %41 = load %struct.ia64_tr_entry*, %struct.ia64_tr_entry** %5, align 8
  %42 = getelementptr inbounds %struct.ia64_tr_entry, %struct.ia64_tr_entry* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ia64_get_rr(i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.ia64_tr_entry*, %struct.ia64_tr_entry** %5, align 8
  %47 = getelementptr inbounds %struct.ia64_tr_entry, %struct.ia64_tr_entry* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %45, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %40
  %51 = load %struct.ia64_tr_entry*, %struct.ia64_tr_entry** %5, align 8
  %52 = getelementptr inbounds %struct.ia64_tr_entry, %struct.ia64_tr_entry* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ia64_tr_entry*, %struct.ia64_tr_entry** %5, align 8
  %55 = getelementptr inbounds %struct.ia64_tr_entry, %struct.ia64_tr_entry* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ia64_set_rr(i32 %53, i32 %56)
  %58 = call i32 (...) @ia64_srlz_d()
  br label %59

59:                                               ; preds = %50, %40
  %60 = load i32, i32* %2, align 4
  %61 = load %struct.ia64_tr_entry*, %struct.ia64_tr_entry** %5, align 8
  %62 = getelementptr inbounds %struct.ia64_tr_entry, %struct.ia64_tr_entry* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ia64_tr_entry*, %struct.ia64_tr_entry** %5, align 8
  %65 = getelementptr inbounds %struct.ia64_tr_entry, %struct.ia64_tr_entry* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = ashr i32 %66, 2
  %68 = call i32 @ia64_ptr(i32 %60, i32 %63, i32 %67)
  %69 = call i32 (...) @ia64_srlz_i()
  %70 = load i32, i32* %2, align 4
  %71 = and i32 %70, 1
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %59
  %74 = load i32, i32* %3, align 4
  %75 = load %struct.ia64_tr_entry*, %struct.ia64_tr_entry** %5, align 8
  %76 = getelementptr inbounds %struct.ia64_tr_entry, %struct.ia64_tr_entry* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ia64_tr_entry*, %struct.ia64_tr_entry** %5, align 8
  %79 = getelementptr inbounds %struct.ia64_tr_entry, %struct.ia64_tr_entry* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ia64_tr_entry*, %struct.ia64_tr_entry** %5, align 8
  %82 = getelementptr inbounds %struct.ia64_tr_entry, %struct.ia64_tr_entry* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = ashr i32 %83, 2
  %85 = call i32 @ia64_itr(i32 1, i32 %74, i32 %77, i32 %80, i32 %84)
  %86 = call i32 (...) @ia64_srlz_i()
  br label %87

87:                                               ; preds = %73, %59
  %88 = load i32, i32* %2, align 4
  %89 = and i32 %88, 2
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %105

91:                                               ; preds = %87
  %92 = load i32, i32* %3, align 4
  %93 = load %struct.ia64_tr_entry*, %struct.ia64_tr_entry** %5, align 8
  %94 = getelementptr inbounds %struct.ia64_tr_entry, %struct.ia64_tr_entry* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.ia64_tr_entry*, %struct.ia64_tr_entry** %5, align 8
  %97 = getelementptr inbounds %struct.ia64_tr_entry, %struct.ia64_tr_entry* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.ia64_tr_entry*, %struct.ia64_tr_entry** %5, align 8
  %100 = getelementptr inbounds %struct.ia64_tr_entry, %struct.ia64_tr_entry* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = ashr i32 %101, 2
  %103 = call i32 @ia64_itr(i32 2, i32 %92, i32 %95, i32 %98, i32 %102)
  %104 = call i32 (...) @ia64_srlz_i()
  br label %105

105:                                              ; preds = %91, %87
  %106 = load i32, i32* %4, align 4
  %107 = load %struct.ia64_tr_entry*, %struct.ia64_tr_entry** %5, align 8
  %108 = getelementptr inbounds %struct.ia64_tr_entry, %struct.ia64_tr_entry* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %106, %109
  br i1 %110, label %111, label %118

111:                                              ; preds = %105
  %112 = load %struct.ia64_tr_entry*, %struct.ia64_tr_entry** %5, align 8
  %113 = getelementptr inbounds %struct.ia64_tr_entry, %struct.ia64_tr_entry* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @ia64_set_rr(i32 %114, i32 %115)
  %117 = call i32 (...) @ia64_srlz_d()
  br label %118

118:                                              ; preds = %111, %105
  br label %119

119:                                              ; preds = %118, %23
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %3, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %3, align 4
  br label %19

123:                                              ; preds = %19
  %124 = load i64, i64* %6, align 8
  %125 = call i32 @ia64_set_psr(i64 %124)
  br label %126

126:                                              ; preds = %123, %15
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @ia64_clear_ic(...) #1

declare dso_local i32 @ia64_get_rr(i32) #1

declare dso_local i32 @ia64_set_rr(i32, i32) #1

declare dso_local i32 @ia64_srlz_d(...) #1

declare dso_local i32 @ia64_ptr(i32, i32, i32) #1

declare dso_local i32 @ia64_srlz_i(...) #1

declare dso_local i32 @ia64_itr(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ia64_set_psr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
