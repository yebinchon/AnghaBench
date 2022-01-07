; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/xen/extr_p2m.c_xen_alloc_p2m_entry.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/xen/extr_p2m.c_xen_alloc_p2m_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

@xen_p2m_addr = common dso_local global i64 0, align 8
@PG_LEVEL_4K = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@p2m_missing_pte = common dso_local global i64** null, align 8
@p2m_identity_pte = common dso_local global i64** null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@p2m_top_mfn = common dso_local global i64* null, align 8
@MAX_P2M_PFN = common dso_local global i64 0, align 8
@p2m_top_mfn_p = common dso_local global i64** null, align 8
@p2m_mid_missing_mfn = common dso_local global i64* null, align 8
@p2m_missing = common dso_local global i64* null, align 8
@p2m_identity = common dso_local global i64* null, align 8
@P2M_PER_PAGE = common dso_local global i32 0, align 4
@p2m_update_lock = common dso_local global i32 0, align 4
@HYPERVISOR_shared_info = common dso_local global %struct.TYPE_4__* null, align 8
@PAGE_KERNEL = common dso_local global i32 0, align 4
@xen_p2m_last_pfn = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xen_alloc_p2m_entry(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64**, align 8
  %8 = alloca i64**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  store i64 %0, i64* %3, align 8
  %17 = load i64, i64* @xen_p2m_addr, align 8
  %18 = load i64, i64* %3, align 8
  %19 = add i64 %17, %18
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* %11, align 8
  %21 = call i64** @lookup_address(i64 %20, i32* %9)
  store i64** %21, i64*** %7, align 8
  %22 = load i64**, i64*** %7, align 8
  %23 = icmp ne i64** %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @PG_LEVEL_4K, align 4
  %27 = icmp ne i32 %25, %26
  br label %28

28:                                               ; preds = %24, %1
  %29 = phi i1 [ true, %1 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load i64**, i64*** %7, align 8
  %33 = ptrtoint i64** %32 to i64
  %34 = load i32, i32* @PAGE_SIZE, align 4
  %35 = sub nsw i32 %34, 1
  %36 = xor i32 %35, -1
  %37 = sext i32 %36 to i64
  %38 = and i64 %33, %37
  %39 = inttoptr i64 %38 to i64**
  store i64** %39, i64*** %8, align 8
  %40 = load i64**, i64*** %8, align 8
  %41 = load i64**, i64*** @p2m_missing_pte, align 8
  %42 = icmp eq i64** %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %28
  %44 = load i64**, i64*** %8, align 8
  %45 = load i64**, i64*** @p2m_identity_pte, align 8
  %46 = icmp eq i64** %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %43, %28
  %48 = load i64, i64* %11, align 8
  %49 = load i64**, i64*** %8, align 8
  %50 = call i64** @alloc_p2m_pmd(i64 %48, i64** %49)
  store i64** %50, i64*** %7, align 8
  %51 = load i64**, i64*** %7, align 8
  %52 = icmp ne i64** %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %222

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56, %43
  %58 = load i64*, i64** @p2m_top_mfn, align 8
  %59 = icmp ne i64* %58, null
  br i1 %59, label %60, label %122

60:                                               ; preds = %57
  %61 = load i64, i64* %3, align 8
  %62 = load i64, i64* @MAX_P2M_PFN, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %122

64:                                               ; preds = %60
  %65 = load i64, i64* %3, align 8
  %66 = call i32 @p2m_top_index(i64 %65)
  store i32 %66, i32* %4, align 4
  %67 = load i64*, i64** @p2m_top_mfn, align 8
  %68 = load i32, i32* %4, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  store i64* %70, i64** %5, align 8
  %71 = load i64**, i64*** @p2m_top_mfn_p, align 8
  %72 = load i32, i32* %4, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i64*, i64** %71, i64 %73
  %75 = load i64*, i64** %74, align 8
  %76 = call i64* @READ_ONCE(i64* %75)
  store i64* %76, i64** %6, align 8
  %77 = load i64*, i64** %6, align 8
  %78 = call i64 @virt_to_mfn(i64* %77)
  %79 = load i64*, i64** %5, align 8
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %78, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 @BUG_ON(i32 %82)
  %84 = load i64*, i64** %6, align 8
  %85 = load i64*, i64** @p2m_mid_missing_mfn, align 8
  %86 = icmp eq i64* %84, %85
  br i1 %86, label %87, label %121

87:                                               ; preds = %64
  %88 = call i64* (...) @alloc_p2m_page()
  store i64* %88, i64** %6, align 8
  %89 = load i64*, i64** %6, align 8
  %90 = icmp ne i64* %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %87
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %2, align 4
  br label %222

94:                                               ; preds = %87
  %95 = load i64*, i64** %6, align 8
  %96 = load i64*, i64** @p2m_missing, align 8
  %97 = call i32 @p2m_mid_mfn_init(i64* %95, i64* %96)
  %98 = load i64*, i64** @p2m_mid_missing_mfn, align 8
  %99 = call i64 @virt_to_mfn(i64* %98)
  store i64 %99, i64* %13, align 8
  %100 = load i64*, i64** %6, align 8
  %101 = call i64 @virt_to_mfn(i64* %100)
  store i64 %101, i64* %14, align 8
  %102 = load i64*, i64** %5, align 8
  %103 = load i64, i64* %13, align 8
  %104 = load i64, i64* %14, align 8
  %105 = call i64 @cmpxchg(i64* %102, i64 %103, i64 %104)
  store i64 %105, i64* %15, align 8
  %106 = load i64, i64* %15, align 8
  %107 = load i64, i64* %13, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %94
  %110 = load i64*, i64** %6, align 8
  %111 = call i32 @free_p2m_page(i64* %110)
  %112 = load i64, i64* %15, align 8
  %113 = call i64* @mfn_to_virt(i64 %112)
  store i64* %113, i64** %6, align 8
  br label %120

114:                                              ; preds = %94
  %115 = load i64*, i64** %6, align 8
  %116 = load i64**, i64*** @p2m_top_mfn_p, align 8
  %117 = load i32, i32* %4, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i64*, i64** %116, i64 %118
  store i64* %115, i64** %119, align 8
  br label %120

120:                                              ; preds = %114, %109
  br label %121

121:                                              ; preds = %120, %64
  br label %123

122:                                              ; preds = %60, %57
  store i64* null, i64** %6, align 8
  br label %123

123:                                              ; preds = %122, %121
  %124 = load i64**, i64*** %7, align 8
  %125 = load i64*, i64** %124, align 8
  %126 = call i64* @READ_ONCE(i64* %125)
  %127 = call i64 @pte_pfn(i64* %126)
  store i64 %127, i64* %12, align 8
  %128 = load i64, i64* %12, align 8
  %129 = load i64*, i64** @p2m_identity, align 8
  %130 = call i32 @__pa(i64* %129)
  %131 = call i64 @PFN_DOWN(i32 %130)
  %132 = icmp eq i64 %128, %131
  br i1 %132, label %139, label %133

133:                                              ; preds = %123
  %134 = load i64, i64* %12, align 8
  %135 = load i64*, i64** @p2m_missing, align 8
  %136 = call i32 @__pa(i64* %135)
  %137 = call i64 @PFN_DOWN(i32 %136)
  %138 = icmp eq i64 %134, %137
  br i1 %138, label %139, label %211

139:                                              ; preds = %133, %123
  %140 = call i64* (...) @alloc_p2m_page()
  store i64* %140, i64** %16, align 8
  %141 = load i64*, i64** %16, align 8
  %142 = icmp ne i64* %141, null
  br i1 %142, label %146, label %143

143:                                              ; preds = %139
  %144 = load i32, i32* @ENOMEM, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %2, align 4
  br label %222

146:                                              ; preds = %139
  %147 = load i64, i64* %12, align 8
  %148 = load i64*, i64** @p2m_missing, align 8
  %149 = call i32 @__pa(i64* %148)
  %150 = call i64 @PFN_DOWN(i32 %149)
  %151 = icmp eq i64 %147, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %146
  %153 = load i64*, i64** %16, align 8
  %154 = call i32 @p2m_init(i64* %153)
  br label %164

155:                                              ; preds = %146
  %156 = load i64*, i64** %16, align 8
  %157 = load i64, i64* %3, align 8
  %158 = load i32, i32* @P2M_PER_PAGE, align 4
  %159 = sub nsw i32 %158, 1
  %160 = xor i32 %159, -1
  %161 = sext i32 %160 to i64
  %162 = and i64 %157, %161
  %163 = call i32 @p2m_init_identity(i64* %156, i64 %162)
  br label %164

164:                                              ; preds = %155, %152
  %165 = load i64, i64* %10, align 8
  %166 = call i32 @spin_lock_irqsave(i32* @p2m_update_lock, i64 %165)
  %167 = load i64**, i64*** %7, align 8
  %168 = load i64*, i64** %167, align 8
  %169 = call i64 @pte_pfn(i64* %168)
  %170 = load i64, i64* %12, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %202

172:                                              ; preds = %164
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** @HYPERVISOR_shared_info, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %175, align 8
  %178 = call i32 (...) @wmb()
  %179 = load i64**, i64*** %7, align 8
  %180 = load i64*, i64** %16, align 8
  %181 = call i32 @__pa(i64* %180)
  %182 = call i64 @PFN_DOWN(i32 %181)
  %183 = load i32, i32* @PAGE_KERNEL, align 4
  %184 = call i32 @pfn_pte(i64 %182, i32 %183)
  %185 = call i32 @set_pte(i64** %179, i32 %184)
  %186 = call i32 (...) @wmb()
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** @HYPERVISOR_shared_info, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %189, align 8
  %192 = load i64*, i64** %6, align 8
  %193 = icmp ne i64* %192, null
  br i1 %193, label %194, label %201

194:                                              ; preds = %172
  %195 = load i64*, i64** %16, align 8
  %196 = call i64 @virt_to_mfn(i64* %195)
  %197 = load i64*, i64** %6, align 8
  %198 = load i64, i64* %3, align 8
  %199 = call i64 @p2m_mid_index(i64 %198)
  %200 = getelementptr inbounds i64, i64* %197, i64 %199
  store i64 %196, i64* %200, align 8
  br label %201

201:                                              ; preds = %194, %172
  store i64* null, i64** %16, align 8
  br label %202

202:                                              ; preds = %201, %164
  %203 = load i64, i64* %10, align 8
  %204 = call i32 @spin_unlock_irqrestore(i32* @p2m_update_lock, i64 %203)
  %205 = load i64*, i64** %16, align 8
  %206 = icmp ne i64* %205, null
  br i1 %206, label %207, label %210

207:                                              ; preds = %202
  %208 = load i64*, i64** %16, align 8
  %209 = call i32 @free_p2m_page(i64* %208)
  br label %210

210:                                              ; preds = %207, %202
  br label %211

211:                                              ; preds = %210, %133
  %212 = load i64, i64* %3, align 8
  %213 = load i64, i64* @xen_p2m_last_pfn, align 8
  %214 = icmp ugt i64 %212, %213
  br i1 %214, label %215, label %221

215:                                              ; preds = %211
  %216 = load i64, i64* %3, align 8
  store i64 %216, i64* @xen_p2m_last_pfn, align 8
  %217 = load i64, i64* @xen_p2m_last_pfn, align 8
  %218 = load %struct.TYPE_4__*, %struct.TYPE_4__** @HYPERVISOR_shared_info, align 8
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 0
  store i64 %217, i64* %220, align 8
  br label %221

221:                                              ; preds = %215, %211
  store i32 0, i32* %2, align 4
  br label %222

222:                                              ; preds = %221, %143, %91, %53
  %223 = load i32, i32* %2, align 4
  ret i32 %223
}

declare dso_local i64** @lookup_address(i64, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64** @alloc_p2m_pmd(i64, i64**) #1

declare dso_local i32 @p2m_top_index(i64) #1

declare dso_local i64* @READ_ONCE(i64*) #1

declare dso_local i64 @virt_to_mfn(i64*) #1

declare dso_local i64* @alloc_p2m_page(...) #1

declare dso_local i32 @p2m_mid_mfn_init(i64*, i64*) #1

declare dso_local i64 @cmpxchg(i64*, i64, i64) #1

declare dso_local i32 @free_p2m_page(i64*) #1

declare dso_local i64* @mfn_to_virt(i64) #1

declare dso_local i64 @pte_pfn(i64*) #1

declare dso_local i64 @PFN_DOWN(i32) #1

declare dso_local i32 @__pa(i64*) #1

declare dso_local i32 @p2m_init(i64*) #1

declare dso_local i32 @p2m_init_identity(i64*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @set_pte(i64**, i32) #1

declare dso_local i32 @pfn_pte(i64, i32) #1

declare dso_local i64 @p2m_mid_index(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
