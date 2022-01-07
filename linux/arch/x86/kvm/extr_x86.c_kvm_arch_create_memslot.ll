; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_arch_create_memslot.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_arch_create_memslot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_memory_slot = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvm_lpage_info**, %struct.kvm_lpage_info** }
%struct.kvm_lpage_info = type { i32 }

@KVM_NR_PAGE_SIZES = common dso_local global i32 0, align 4
@GFP_KERNEL_ACCOUNT = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_arch_create_memslot(%struct.kvm* %0, %struct.kvm_memory_slot* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca %struct.kvm_memory_slot*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.kvm_lpage_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %5, align 8
  store %struct.kvm_memory_slot* %1, %struct.kvm_memory_slot** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %144, %3
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @KVM_NR_PAGE_SIZES, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %147

18:                                               ; preds = %14
  %19 = load i32, i32* %8, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %12, align 4
  %21 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %22 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = add i64 %23, %24
  %26 = sub i64 %25, 1
  %27 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %28 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @gfn_to_index(i64 %26, i64 %29, i32 %30)
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @GFP_KERNEL_ACCOUNT, align 4
  %35 = call i8* @kvcalloc(i32 %33, i32 4, i32 %34)
  %36 = bitcast i8* %35 to %struct.kvm_lpage_info*
  %37 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %38 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load %struct.kvm_lpage_info**, %struct.kvm_lpage_info*** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.kvm_lpage_info*, %struct.kvm_lpage_info** %40, i64 %42
  store %struct.kvm_lpage_info* %36, %struct.kvm_lpage_info** %43, align 8
  %44 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %45 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load %struct.kvm_lpage_info**, %struct.kvm_lpage_info*** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.kvm_lpage_info*, %struct.kvm_lpage_info** %47, i64 %49
  %51 = load %struct.kvm_lpage_info*, %struct.kvm_lpage_info** %50, align 8
  %52 = icmp ne %struct.kvm_lpage_info* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %18
  br label %154

54:                                               ; preds = %18
  %55 = load i32, i32* %8, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %144

58:                                               ; preds = %54
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @GFP_KERNEL_ACCOUNT, align 4
  %61 = call i8* @kvcalloc(i32 %59, i32 4, i32 %60)
  %62 = bitcast i8* %61 to %struct.kvm_lpage_info*
  store %struct.kvm_lpage_info* %62, %struct.kvm_lpage_info** %9, align 8
  %63 = load %struct.kvm_lpage_info*, %struct.kvm_lpage_info** %9, align 8
  %64 = icmp ne %struct.kvm_lpage_info* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %58
  br label %154

66:                                               ; preds = %58
  %67 = load %struct.kvm_lpage_info*, %struct.kvm_lpage_info** %9, align 8
  %68 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %69 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load %struct.kvm_lpage_info**, %struct.kvm_lpage_info*** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.kvm_lpage_info*, %struct.kvm_lpage_info** %71, i64 %74
  store %struct.kvm_lpage_info* %67, %struct.kvm_lpage_info** %75, align 8
  %76 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %77 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @KVM_PAGES_PER_HPAGE(i32 %79)
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = and i64 %78, %82
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %66
  %86 = load %struct.kvm_lpage_info*, %struct.kvm_lpage_info** %9, align 8
  %87 = getelementptr inbounds %struct.kvm_lpage_info, %struct.kvm_lpage_info* %86, i64 0
  %88 = getelementptr inbounds %struct.kvm_lpage_info, %struct.kvm_lpage_info* %87, i32 0, i32 0
  store i32 1, i32* %88, align 4
  br label %89

89:                                               ; preds = %85, %66
  %90 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %91 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %7, align 8
  %94 = add i64 %92, %93
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @KVM_PAGES_PER_HPAGE(i32 %95)
  %97 = sub nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = and i64 %94, %98
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %89
  %102 = load %struct.kvm_lpage_info*, %struct.kvm_lpage_info** %9, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sub nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.kvm_lpage_info, %struct.kvm_lpage_info* %102, i64 %105
  %107 = getelementptr inbounds %struct.kvm_lpage_info, %struct.kvm_lpage_info* %106, i32 0, i32 0
  store i32 1, i32* %107, align 4
  br label %108

108:                                              ; preds = %101, %89
  %109 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %110 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @PAGE_SHIFT, align 8
  %113 = lshr i64 %111, %112
  store i64 %113, i64* %10, align 8
  %114 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %115 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* %10, align 8
  %118 = xor i64 %116, %117
  %119 = load i32, i32* %12, align 4
  %120 = call i32 @KVM_PAGES_PER_HPAGE(i32 %119)
  %121 = sub nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = and i64 %118, %122
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %108
  %126 = call i32 (...) @kvm_largepages_enabled()
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %143, label %128

128:                                              ; preds = %125, %108
  store i64 0, i64* %13, align 8
  br label %129

129:                                              ; preds = %139, %128
  %130 = load i64, i64* %13, align 8
  %131 = load i32, i32* %11, align 4
  %132 = sext i32 %131 to i64
  %133 = icmp ult i64 %130, %132
  br i1 %133, label %134, label %142

134:                                              ; preds = %129
  %135 = load %struct.kvm_lpage_info*, %struct.kvm_lpage_info** %9, align 8
  %136 = load i64, i64* %13, align 8
  %137 = getelementptr inbounds %struct.kvm_lpage_info, %struct.kvm_lpage_info* %135, i64 %136
  %138 = getelementptr inbounds %struct.kvm_lpage_info, %struct.kvm_lpage_info* %137, i32 0, i32 0
  store i32 1, i32* %138, align 4
  br label %139

139:                                              ; preds = %134
  %140 = load i64, i64* %13, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %13, align 8
  br label %129

142:                                              ; preds = %129
  br label %143

143:                                              ; preds = %142, %125
  br label %144

144:                                              ; preds = %143, %57
  %145 = load i32, i32* %8, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %8, align 4
  br label %14

147:                                              ; preds = %14
  %148 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %149 = load i64, i64* %7, align 8
  %150 = call i64 @kvm_page_track_create_memslot(%struct.kvm_memory_slot* %148, i64 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %147
  br label %154

153:                                              ; preds = %147
  store i32 0, i32* %4, align 4
  br label %204

154:                                              ; preds = %152, %65, %53
  store i32 0, i32* %8, align 4
  br label %155

155:                                              ; preds = %198, %154
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* @KVM_NR_PAGE_SIZES, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %201

159:                                              ; preds = %155
  %160 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %161 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 1
  %163 = load %struct.kvm_lpage_info**, %struct.kvm_lpage_info*** %162, align 8
  %164 = load i32, i32* %8, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.kvm_lpage_info*, %struct.kvm_lpage_info** %163, i64 %165
  %167 = load %struct.kvm_lpage_info*, %struct.kvm_lpage_info** %166, align 8
  %168 = call i32 @kvfree(%struct.kvm_lpage_info* %167)
  %169 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %170 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 1
  %172 = load %struct.kvm_lpage_info**, %struct.kvm_lpage_info*** %171, align 8
  %173 = load i32, i32* %8, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.kvm_lpage_info*, %struct.kvm_lpage_info** %172, i64 %174
  store %struct.kvm_lpage_info* null, %struct.kvm_lpage_info** %175, align 8
  %176 = load i32, i32* %8, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %159
  br label %198

179:                                              ; preds = %159
  %180 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %181 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 0
  %183 = load %struct.kvm_lpage_info**, %struct.kvm_lpage_info*** %182, align 8
  %184 = load i32, i32* %8, align 4
  %185 = sub nsw i32 %184, 1
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.kvm_lpage_info*, %struct.kvm_lpage_info** %183, i64 %186
  %188 = load %struct.kvm_lpage_info*, %struct.kvm_lpage_info** %187, align 8
  %189 = call i32 @kvfree(%struct.kvm_lpage_info* %188)
  %190 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %6, align 8
  %191 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 0
  %193 = load %struct.kvm_lpage_info**, %struct.kvm_lpage_info*** %192, align 8
  %194 = load i32, i32* %8, align 4
  %195 = sub nsw i32 %194, 1
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.kvm_lpage_info*, %struct.kvm_lpage_info** %193, i64 %196
  store %struct.kvm_lpage_info* null, %struct.kvm_lpage_info** %197, align 8
  br label %198

198:                                              ; preds = %179, %178
  %199 = load i32, i32* %8, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %8, align 4
  br label %155

201:                                              ; preds = %155
  %202 = load i32, i32* @ENOMEM, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %4, align 4
  br label %204

204:                                              ; preds = %201, %153
  %205 = load i32, i32* %4, align 4
  ret i32 %205
}

declare dso_local i32 @gfn_to_index(i64, i64, i32) #1

declare dso_local i8* @kvcalloc(i32, i32, i32) #1

declare dso_local i32 @KVM_PAGES_PER_HPAGE(i32) #1

declare dso_local i32 @kvm_largepages_enabled(...) #1

declare dso_local i64 @kvm_page_track_create_memslot(%struct.kvm_memory_slot*, i64) #1

declare dso_local i32 @kvfree(%struct.kvm_lpage_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
