; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_main.c_event.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_main.c_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i8*, i64)* @event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @event(i32 %0, i32* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %240 [
    i32 167, label %10
    i32 166, label %15
    i32 168, label %20
    i32 165, label %25
    i32 164, label %30
    i32 163, label %35
    i32 162, label %40
    i32 161, label %45
    i32 160, label %50
    i32 159, label %55
    i32 158, label %60
    i32 157, label %65
    i32 156, label %70
    i32 155, label %75
    i32 154, label %80
    i32 153, label %85
    i32 151, label %90
    i32 150, label %95
    i32 149, label %100
    i32 152, label %105
    i32 145, label %110
    i32 144, label %115
    i32 143, label %120
    i32 142, label %125
    i32 141, label %130
    i32 140, label %135
    i32 146, label %140
    i32 147, label %145
    i32 148, label %150
    i32 170, label %155
    i32 169, label %160
    i32 171, label %165
    i32 173, label %170
    i32 172, label %175
    i32 139, label %180
    i32 138, label %185
    i32 137, label %190
    i32 136, label %195
    i32 135, label %200
    i32 134, label %205
    i32 133, label %210
    i32 132, label %215
    i32 131, label %220
    i32 130, label %225
    i32 129, label %230
    i32 128, label %235
  ]

10:                                               ; preds = %4
  %11 = load i32*, i32** %6, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @main_bitmap_init_post(i32* %11, i8* %12, i64 %13)
  br label %240

15:                                               ; preds = %4
  %16 = load i32*, i32** %6, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @main_bitmap_init_pre(i32* %16, i8* %17, i64 %18)
  br label %240

20:                                               ; preds = %4
  %21 = load i32*, i32** %6, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @main_bitmap_final_overflow(i32* %21, i8* %22, i64 %23)
  br label %240

25:                                               ; preds = %4
  %26 = load i32*, i32** %6, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @main_calculated_words_base(i32* %26, i8* %27, i64 %28)
  br label %240

30:                                               ; preds = %4
  %31 = load i32*, i32** %6, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @main_cracker_finished(i32* %31, i8* %32, i64 %33)
  br label %240

35:                                               ; preds = %4
  %36 = load i32*, i32** %6, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @main_cracker_hash_cracked(i32* %36, i8* %37, i64 %38)
  br label %240

40:                                               ; preds = %4
  %41 = load i32*, i32** %6, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @main_cracker_starting(i32* %41, i8* %42, i64 %43)
  br label %240

45:                                               ; preds = %4
  %46 = load i32*, i32** %6, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @main_hashlist_count_lines_post(i32* %46, i8* %47, i64 %48)
  br label %240

50:                                               ; preds = %4
  %51 = load i32*, i32** %6, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @main_hashlist_count_lines_pre(i32* %51, i8* %52, i64 %53)
  br label %240

55:                                               ; preds = %4
  %56 = load i32*, i32** %6, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @main_hashlist_parse_hash(i32* %56, i8* %57, i64 %58)
  br label %240

60:                                               ; preds = %4
  %61 = load i32*, i32** %6, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @main_hashlist_sort_hash_post(i32* %61, i8* %62, i64 %63)
  br label %240

65:                                               ; preds = %4
  %66 = load i32*, i32** %6, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = load i64, i64* %8, align 8
  %69 = call i32 @main_hashlist_sort_hash_pre(i32* %66, i8* %67, i64 %68)
  br label %240

70:                                               ; preds = %4
  %71 = load i32*, i32** %6, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = load i64, i64* %8, align 8
  %74 = call i32 @main_hashlist_sort_salt_post(i32* %71, i8* %72, i64 %73)
  br label %240

75:                                               ; preds = %4
  %76 = load i32*, i32** %6, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = load i64, i64* %8, align 8
  %79 = call i32 @main_hashlist_sort_salt_pre(i32* %76, i8* %77, i64 %78)
  br label %240

80:                                               ; preds = %4
  %81 = load i32*, i32** %6, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = load i64, i64* %8, align 8
  %84 = call i32 @main_hashlist_unique_hash_post(i32* %81, i8* %82, i64 %83)
  br label %240

85:                                               ; preds = %4
  %86 = load i32*, i32** %6, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = load i64, i64* %8, align 8
  %89 = call i32 @main_hashlist_unique_hash_pre(i32* %86, i8* %87, i64 %88)
  br label %240

90:                                               ; preds = %4
  %91 = load i32*, i32** %6, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = load i64, i64* %8, align 8
  %94 = call i32 @main_log_error(i32* %91, i8* %92, i64 %93)
  br label %240

95:                                               ; preds = %4
  %96 = load i32*, i32** %6, align 8
  %97 = load i8*, i8** %7, align 8
  %98 = load i64, i64* %8, align 8
  %99 = call i32 @main_log_info(i32* %96, i8* %97, i64 %98)
  br label %240

100:                                              ; preds = %4
  %101 = load i32*, i32** %6, align 8
  %102 = load i8*, i8** %7, align 8
  %103 = load i64, i64* %8, align 8
  %104 = call i32 @main_log_warning(i32* %101, i8* %102, i64 %103)
  br label %240

105:                                              ; preds = %4
  %106 = load i32*, i32** %6, align 8
  %107 = load i8*, i8** %7, align 8
  %108 = load i64, i64* %8, align 8
  %109 = call i32 @main_log_advice(i32* %106, i8* %107, i64 %108)
  br label %240

110:                                              ; preds = %4
  %111 = load i32*, i32** %6, align 8
  %112 = load i8*, i8** %7, align 8
  %113 = load i64, i64* %8, align 8
  %114 = call i32 @main_monitor_runtime_limit(i32* %111, i8* %112, i64 %113)
  br label %240

115:                                              ; preds = %4
  %116 = load i32*, i32** %6, align 8
  %117 = load i8*, i8** %7, align 8
  %118 = load i64, i64* %8, align 8
  %119 = call i32 @main_monitor_status_refresh(i32* %116, i8* %117, i64 %118)
  br label %240

120:                                              ; preds = %4
  %121 = load i32*, i32** %6, align 8
  %122 = load i8*, i8** %7, align 8
  %123 = load i64, i64* %8, align 8
  %124 = call i32 @main_monitor_temp_abort(i32* %121, i8* %122, i64 %123)
  br label %240

125:                                              ; preds = %4
  %126 = load i32*, i32** %6, align 8
  %127 = load i8*, i8** %7, align 8
  %128 = load i64, i64* %8, align 8
  %129 = call i32 @main_monitor_throttle1(i32* %126, i8* %127, i64 %128)
  br label %240

130:                                              ; preds = %4
  %131 = load i32*, i32** %6, align 8
  %132 = load i8*, i8** %7, align 8
  %133 = load i64, i64* %8, align 8
  %134 = call i32 @main_monitor_throttle2(i32* %131, i8* %132, i64 %133)
  br label %240

135:                                              ; preds = %4
  %136 = load i32*, i32** %6, align 8
  %137 = load i8*, i8** %7, align 8
  %138 = load i64, i64* %8, align 8
  %139 = call i32 @main_monitor_throttle3(i32* %136, i8* %137, i64 %138)
  br label %240

140:                                              ; preds = %4
  %141 = load i32*, i32** %6, align 8
  %142 = load i8*, i8** %7, align 8
  %143 = load i64, i64* %8, align 8
  %144 = call i32 @main_monitor_performance_hint(i32* %141, i8* %142, i64 %143)
  br label %240

145:                                              ; preds = %4
  %146 = load i32*, i32** %6, align 8
  %147 = load i8*, i8** %7, align 8
  %148 = load i64, i64* %8, align 8
  %149 = call i32 @main_monitor_noinput_hint(i32* %146, i8* %147, i64 %148)
  br label %240

150:                                              ; preds = %4
  %151 = load i32*, i32** %6, align 8
  %152 = load i8*, i8** %7, align 8
  %153 = load i64, i64* %8, align 8
  %154 = call i32 @main_monitor_noinput_abort(i32* %151, i8* %152, i64 %153)
  br label %240

155:                                              ; preds = %4
  %156 = load i32*, i32** %6, align 8
  %157 = load i8*, i8** %7, align 8
  %158 = load i64, i64* %8, align 8
  %159 = call i32 @main_backend_session_post(i32* %156, i8* %157, i64 %158)
  br label %240

160:                                              ; preds = %4
  %161 = load i32*, i32** %6, align 8
  %162 = load i8*, i8** %7, align 8
  %163 = load i64, i64* %8, align 8
  %164 = call i32 @main_backend_session_pre(i32* %161, i8* %162, i64 %163)
  br label %240

165:                                              ; preds = %4
  %166 = load i32*, i32** %6, align 8
  %167 = load i8*, i8** %7, align 8
  %168 = load i64, i64* %8, align 8
  %169 = call i32 @main_backend_session_hostmem(i32* %166, i8* %167, i64 %168)
  br label %240

170:                                              ; preds = %4
  %171 = load i32*, i32** %6, align 8
  %172 = load i8*, i8** %7, align 8
  %173 = load i64, i64* %8, align 8
  %174 = call i32 @main_backend_device_init_post(i32* %171, i8* %172, i64 %173)
  br label %240

175:                                              ; preds = %4
  %176 = load i32*, i32** %6, align 8
  %177 = load i8*, i8** %7, align 8
  %178 = load i64, i64* %8, align 8
  %179 = call i32 @main_backend_device_init_pre(i32* %176, i8* %177, i64 %178)
  br label %240

180:                                              ; preds = %4
  %181 = load i32*, i32** %6, align 8
  %182 = load i8*, i8** %7, align 8
  %183 = load i64, i64* %8, align 8
  %184 = call i32 @main_outerloop_finished(i32* %181, i8* %182, i64 %183)
  br label %240

185:                                              ; preds = %4
  %186 = load i32*, i32** %6, align 8
  %187 = load i8*, i8** %7, align 8
  %188 = load i64, i64* %8, align 8
  %189 = call i32 @main_outerloop_mainscreen(i32* %186, i8* %187, i64 %188)
  br label %240

190:                                              ; preds = %4
  %191 = load i32*, i32** %6, align 8
  %192 = load i8*, i8** %7, align 8
  %193 = load i64, i64* %8, align 8
  %194 = call i32 @main_outerloop_starting(i32* %191, i8* %192, i64 %193)
  br label %240

195:                                              ; preds = %4
  %196 = load i32*, i32** %6, align 8
  %197 = load i8*, i8** %7, align 8
  %198 = load i64, i64* %8, align 8
  %199 = call i32 @main_potfile_all_cracked(i32* %196, i8* %197, i64 %198)
  br label %240

200:                                              ; preds = %4
  %201 = load i32*, i32** %6, align 8
  %202 = load i8*, i8** %7, align 8
  %203 = load i64, i64* %8, align 8
  %204 = call i32 @main_potfile_hash_left(i32* %201, i8* %202, i64 %203)
  br label %240

205:                                              ; preds = %4
  %206 = load i32*, i32** %6, align 8
  %207 = load i8*, i8** %7, align 8
  %208 = load i64, i64* %8, align 8
  %209 = call i32 @main_potfile_hash_show(i32* %206, i8* %207, i64 %208)
  br label %240

210:                                              ; preds = %4
  %211 = load i32*, i32** %6, align 8
  %212 = load i8*, i8** %7, align 8
  %213 = load i64, i64* %8, align 8
  %214 = call i32 @main_potfile_num_cracked(i32* %211, i8* %212, i64 %213)
  br label %240

215:                                              ; preds = %4
  %216 = load i32*, i32** %6, align 8
  %217 = load i8*, i8** %7, align 8
  %218 = load i64, i64* %8, align 8
  %219 = call i32 @main_potfile_remove_parse_post(i32* %216, i8* %217, i64 %218)
  br label %240

220:                                              ; preds = %4
  %221 = load i32*, i32** %6, align 8
  %222 = load i8*, i8** %7, align 8
  %223 = load i64, i64* %8, align 8
  %224 = call i32 @main_potfile_remove_parse_pre(i32* %221, i8* %222, i64 %223)
  br label %240

225:                                              ; preds = %4
  %226 = load i32*, i32** %6, align 8
  %227 = load i8*, i8** %7, align 8
  %228 = load i64, i64* %8, align 8
  %229 = call i32 @main_set_kernel_power_final(i32* %226, i8* %227, i64 %228)
  br label %240

230:                                              ; preds = %4
  %231 = load i32*, i32** %6, align 8
  %232 = load i8*, i8** %7, align 8
  %233 = load i64, i64* %8, align 8
  %234 = call i32 @main_wordlist_cache_generate(i32* %231, i8* %232, i64 %233)
  br label %240

235:                                              ; preds = %4
  %236 = load i32*, i32** %6, align 8
  %237 = load i8*, i8** %7, align 8
  %238 = load i64, i64* %8, align 8
  %239 = call i32 @main_wordlist_cache_hit(i32* %236, i8* %237, i64 %238)
  br label %240

240:                                              ; preds = %4, %235, %230, %225, %220, %215, %210, %205, %200, %195, %190, %185, %180, %175, %170, %165, %160, %155, %150, %145, %140, %135, %130, %125, %120, %115, %110, %105, %100, %95, %90, %85, %80, %75, %70, %65, %60, %55, %50, %45, %40, %35, %30, %25, %20, %15, %10
  ret void
}

declare dso_local i32 @main_bitmap_init_post(i32*, i8*, i64) #1

declare dso_local i32 @main_bitmap_init_pre(i32*, i8*, i64) #1

declare dso_local i32 @main_bitmap_final_overflow(i32*, i8*, i64) #1

declare dso_local i32 @main_calculated_words_base(i32*, i8*, i64) #1

declare dso_local i32 @main_cracker_finished(i32*, i8*, i64) #1

declare dso_local i32 @main_cracker_hash_cracked(i32*, i8*, i64) #1

declare dso_local i32 @main_cracker_starting(i32*, i8*, i64) #1

declare dso_local i32 @main_hashlist_count_lines_post(i32*, i8*, i64) #1

declare dso_local i32 @main_hashlist_count_lines_pre(i32*, i8*, i64) #1

declare dso_local i32 @main_hashlist_parse_hash(i32*, i8*, i64) #1

declare dso_local i32 @main_hashlist_sort_hash_post(i32*, i8*, i64) #1

declare dso_local i32 @main_hashlist_sort_hash_pre(i32*, i8*, i64) #1

declare dso_local i32 @main_hashlist_sort_salt_post(i32*, i8*, i64) #1

declare dso_local i32 @main_hashlist_sort_salt_pre(i32*, i8*, i64) #1

declare dso_local i32 @main_hashlist_unique_hash_post(i32*, i8*, i64) #1

declare dso_local i32 @main_hashlist_unique_hash_pre(i32*, i8*, i64) #1

declare dso_local i32 @main_log_error(i32*, i8*, i64) #1

declare dso_local i32 @main_log_info(i32*, i8*, i64) #1

declare dso_local i32 @main_log_warning(i32*, i8*, i64) #1

declare dso_local i32 @main_log_advice(i32*, i8*, i64) #1

declare dso_local i32 @main_monitor_runtime_limit(i32*, i8*, i64) #1

declare dso_local i32 @main_monitor_status_refresh(i32*, i8*, i64) #1

declare dso_local i32 @main_monitor_temp_abort(i32*, i8*, i64) #1

declare dso_local i32 @main_monitor_throttle1(i32*, i8*, i64) #1

declare dso_local i32 @main_monitor_throttle2(i32*, i8*, i64) #1

declare dso_local i32 @main_monitor_throttle3(i32*, i8*, i64) #1

declare dso_local i32 @main_monitor_performance_hint(i32*, i8*, i64) #1

declare dso_local i32 @main_monitor_noinput_hint(i32*, i8*, i64) #1

declare dso_local i32 @main_monitor_noinput_abort(i32*, i8*, i64) #1

declare dso_local i32 @main_backend_session_post(i32*, i8*, i64) #1

declare dso_local i32 @main_backend_session_pre(i32*, i8*, i64) #1

declare dso_local i32 @main_backend_session_hostmem(i32*, i8*, i64) #1

declare dso_local i32 @main_backend_device_init_post(i32*, i8*, i64) #1

declare dso_local i32 @main_backend_device_init_pre(i32*, i8*, i64) #1

declare dso_local i32 @main_outerloop_finished(i32*, i8*, i64) #1

declare dso_local i32 @main_outerloop_mainscreen(i32*, i8*, i64) #1

declare dso_local i32 @main_outerloop_starting(i32*, i8*, i64) #1

declare dso_local i32 @main_potfile_all_cracked(i32*, i8*, i64) #1

declare dso_local i32 @main_potfile_hash_left(i32*, i8*, i64) #1

declare dso_local i32 @main_potfile_hash_show(i32*, i8*, i64) #1

declare dso_local i32 @main_potfile_num_cracked(i32*, i8*, i64) #1

declare dso_local i32 @main_potfile_remove_parse_post(i32*, i8*, i64) #1

declare dso_local i32 @main_potfile_remove_parse_pre(i32*, i8*, i64) #1

declare dso_local i32 @main_set_kernel_power_final(i32*, i8*, i64) #1

declare dso_local i32 @main_wordlist_cache_generate(i32*, i8*, i64) #1

declare dso_local i32 @main_wordlist_cache_hit(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
