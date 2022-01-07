; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/xen/extr_p2m.c_alloc_p2m_pmd.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/xen/extr_p2m.c_alloc_p2m_pmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@PMDS_PER_MID_PAGE = common dso_local global i32 0, align 4
@PMD_SIZE = common dso_local global i32 0, align 4
@init_mm = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@p2m_update_lock = common dso_local global i32 0, align 4
@HYPERVISOR_shared_info = common dso_local global %struct.TYPE_4__* null, align 8
@_KERNPG_TABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64, i32*)* @alloc_p2m_pmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @alloc_p2m_pmd(i64 %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load i32, i32* @PMDS_PER_MID_PAGE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca i32*, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  store i32 0, i32* %13, align 4
  br label %19

19:                                               ; preds = %50, %2
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* @PMDS_PER_MID_PAGE, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %53

23:                                               ; preds = %19
  %24 = call i32* (...) @alloc_p2m_page()
  %25 = load i32, i32* %13, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32*, i32** %18, i64 %26
  store i32* %24, i32** %27, align 8
  %28 = load i32, i32* %13, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %18, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %49, label %33

33:                                               ; preds = %23
  %34 = load i32, i32* %13, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %13, align 4
  br label %36

36:                                               ; preds = %45, %33
  %37 = load i32, i32* %13, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %18, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @free_p2m_page(i32* %43)
  br label %45

45:                                               ; preds = %39
  %46 = load i32, i32* %13, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %13, align 4
  br label %36

48:                                               ; preds = %36
  store i32* null, i32** %3, align 8
  store i32 1, i32* %14, align 4
  br label %154

49:                                               ; preds = %23
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %13, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %13, align 4
  br label %19

53:                                               ; preds = %19
  %54 = load i64, i64* %4, align 8
  %55 = load i32, i32* @PMD_SIZE, align 4
  %56 = load i32, i32* @PMDS_PER_MID_PAGE, align 4
  %57 = mul nsw i32 %55, %56
  %58 = sub nsw i32 %57, 1
  %59 = xor i32 %58, -1
  %60 = sext i32 %59 to i64
  %61 = and i64 %54, %60
  store i64 %61, i64* %12, align 8
  store i32 0, i32* %13, align 4
  br label %62

62:                                               ; preds = %148, %53
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* @PMDS_PER_MID_PAGE, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %151

66:                                               ; preds = %62
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %18, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @copy_page(i32* %70, i32* %71)
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32*, i32** %18, i64 %74
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @__pa(i32* %76)
  %78 = load i32, i32* @PAGE_SHIFT, align 4
  %79 = ashr i32 %77, %78
  %80 = call i32 @paravirt_alloc_pte(i32* @init_mm, i32 %79)
  %81 = load i64, i64* %12, align 8
  %82 = call i32* @lookup_pmd_address(i64 %81)
  store i32* %82, i32** %9, align 8
  %83 = load i32*, i32** %9, align 8
  %84 = icmp ne i32* %83, null
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = call i32 @BUG_ON(i32 %86)
  %88 = load i64, i64* %11, align 8
  %89 = call i32 @spin_lock_irqsave(i32* @p2m_update_lock, i64 %88)
  %90 = load i64, i64* %12, align 8
  %91 = call i32* @lookup_address(i64 %90, i32* %10)
  store i32* %91, i32** %6, align 8
  %92 = load i32*, i32** %6, align 8
  %93 = load i32*, i32** %5, align 8
  %94 = icmp eq i32* %92, %93
  br i1 %94, label %95, label %121

95:                                               ; preds = %66
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** @HYPERVISOR_shared_info, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4
  %101 = call i32 (...) @wmb()
  %102 = load i32*, i32** %9, align 8
  %103 = load i32, i32* %13, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32*, i32** %18, i64 %104
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @__pa(i32* %106)
  %108 = load i32, i32* @_KERNPG_TABLE, align 4
  %109 = or i32 %107, %108
  %110 = call i32 @__pmd(i32 %109)
  %111 = call i32 @set_pmd(i32* %102, i32 %110)
  %112 = call i32 (...) @wmb()
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** @HYPERVISOR_shared_info, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 4
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32*, i32** %18, i64 %119
  store i32* null, i32** %120, align 8
  br label %121

121:                                              ; preds = %95, %66
  %122 = load i64, i64* %11, align 8
  %123 = call i32 @spin_unlock_irqrestore(i32* @p2m_update_lock, i64 %122)
  %124 = load i32, i32* %13, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32*, i32** %18, i64 %125
  %127 = load i32*, i32** %126, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %143

129:                                              ; preds = %121
  %130 = load i32, i32* %13, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32*, i32** %18, i64 %131
  %133 = load i32*, i32** %132, align 8
  %134 = call i32 @__pa(i32* %133)
  %135 = load i32, i32* @PAGE_SHIFT, align 4
  %136 = ashr i32 %134, %135
  %137 = call i32 @paravirt_release_pte(i32 %136)
  %138 = load i32, i32* %13, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32*, i32** %18, i64 %139
  %141 = load i32*, i32** %140, align 8
  %142 = call i32 @free_p2m_page(i32* %141)
  br label %143

143:                                              ; preds = %129, %121
  %144 = load i32, i32* @PMD_SIZE, align 4
  %145 = sext i32 %144 to i64
  %146 = load i64, i64* %12, align 8
  %147 = add i64 %146, %145
  store i64 %147, i64* %12, align 8
  br label %148

148:                                              ; preds = %143
  %149 = load i32, i32* %13, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %13, align 4
  br label %62

151:                                              ; preds = %62
  %152 = load i64, i64* %4, align 8
  %153 = call i32* @lookup_address(i64 %152, i32* %10)
  store i32* %153, i32** %3, align 8
  store i32 1, i32* %14, align 4
  br label %154

154:                                              ; preds = %151, %48
  %155 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %155)
  %156 = load i32*, i32** %3, align 8
  ret i32* %156
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @alloc_p2m_page(...) #2

declare dso_local i32 @free_p2m_page(i32*) #2

declare dso_local i32 @copy_page(i32*, i32*) #2

declare dso_local i32 @paravirt_alloc_pte(i32*, i32) #2

declare dso_local i32 @__pa(i32*) #2

declare dso_local i32* @lookup_pmd_address(i64) #2

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local i32* @lookup_address(i64, i32*) #2

declare dso_local i32 @wmb(...) #2

declare dso_local i32 @set_pmd(i32*, i32) #2

declare dso_local i32 @__pmd(i32) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

declare dso_local i32 @paravirt_release_pte(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
