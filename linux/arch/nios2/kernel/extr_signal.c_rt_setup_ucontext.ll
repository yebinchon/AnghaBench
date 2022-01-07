; ModuleID = '/home/carl/AnghaBench/linux/arch/nios2/kernel/extr_signal.c_rt_setup_ucontext.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nios2/kernel/extr_signal.c_rt_setup_ucontext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucontext = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64*, i64 }
%struct.pt_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.switch_stack = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MCONTEXT_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucontext*, %struct.pt_regs*)* @rt_setup_ucontext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt_setup_ucontext(%struct.ucontext* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca %struct.ucontext*, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca %struct.switch_stack*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store %struct.ucontext* %0, %struct.ucontext** %3, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %8 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %9 = bitcast %struct.pt_regs* %8 to %struct.switch_stack*
  %10 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %9, i64 -1
  store %struct.switch_stack* %10, %struct.switch_stack** %5, align 8
  %11 = load %struct.ucontext*, %struct.ucontext** %3, align 8
  %12 = getelementptr inbounds %struct.ucontext, %struct.ucontext* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  store i64* %14, i64** %6, align 8
  store i32 0, i32* %7, align 4
  %15 = load i32, i32* @MCONTEXT_VERSION, align 4
  %16 = load %struct.ucontext*, %struct.ucontext** %3, align 8
  %17 = getelementptr inbounds %struct.ucontext, %struct.ucontext* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = call i32 @__put_user(i32 %15, i64* %18)
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %7, align 4
  %22 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %23 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %22, i32 0, i32 17
  %24 = load i32, i32* %23, align 4
  %25 = load i64*, i64** %6, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  %27 = call i32 @__put_user(i32 %24, i64* %26)
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %7, align 4
  %30 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %31 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %30, i32 0, i32 16
  %32 = load i32, i32* %31, align 4
  %33 = load i64*, i64** %6, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 1
  %35 = call i32 @__put_user(i32 %32, i64* %34)
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  %38 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %39 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %38, i32 0, i32 15
  %40 = load i32, i32* %39, align 4
  %41 = load i64*, i64** %6, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 2
  %43 = call i32 @__put_user(i32 %40, i64* %42)
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %47 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %46, i32 0, i32 14
  %48 = load i32, i32* %47, align 4
  %49 = load i64*, i64** %6, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 3
  %51 = call i32 @__put_user(i32 %48, i64* %50)
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %7, align 4
  %54 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %55 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %54, i32 0, i32 13
  %56 = load i32, i32* %55, align 4
  %57 = load i64*, i64** %6, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 4
  %59 = call i32 @__put_user(i32 %56, i64* %58)
  %60 = load i32, i32* %7, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %7, align 4
  %62 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %63 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %62, i32 0, i32 12
  %64 = load i32, i32* %63, align 4
  %65 = load i64*, i64** %6, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 5
  %67 = call i32 @__put_user(i32 %64, i64* %66)
  %68 = load i32, i32* %7, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %7, align 4
  %70 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %71 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %70, i32 0, i32 11
  %72 = load i32, i32* %71, align 4
  %73 = load i64*, i64** %6, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 6
  %75 = call i32 @__put_user(i32 %72, i64* %74)
  %76 = load i32, i32* %7, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %7, align 4
  %78 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %79 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %78, i32 0, i32 10
  %80 = load i32, i32* %79, align 4
  %81 = load i64*, i64** %6, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 7
  %83 = call i32 @__put_user(i32 %80, i64* %82)
  %84 = load i32, i32* %7, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %7, align 4
  %86 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %87 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %86, i32 0, i32 9
  %88 = load i32, i32* %87, align 4
  %89 = load i64*, i64** %6, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 8
  %91 = call i32 @__put_user(i32 %88, i64* %90)
  %92 = load i32, i32* %7, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %7, align 4
  %94 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %95 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %94, i32 0, i32 8
  %96 = load i32, i32* %95, align 4
  %97 = load i64*, i64** %6, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 9
  %99 = call i32 @__put_user(i32 %96, i64* %98)
  %100 = load i32, i32* %7, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %7, align 4
  %102 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %103 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %102, i32 0, i32 7
  %104 = load i32, i32* %103, align 4
  %105 = load i64*, i64** %6, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 10
  %107 = call i32 @__put_user(i32 %104, i64* %106)
  %108 = load i32, i32* %7, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %7, align 4
  %110 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %111 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 4
  %113 = load i64*, i64** %6, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 11
  %115 = call i32 @__put_user(i32 %112, i64* %114)
  %116 = load i32, i32* %7, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %7, align 4
  %118 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %119 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  %121 = load i64*, i64** %6, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 12
  %123 = call i32 @__put_user(i32 %120, i64* %122)
  %124 = load i32, i32* %7, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %7, align 4
  %126 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %127 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = load i64*, i64** %6, align 8
  %130 = getelementptr inbounds i64, i64* %129, i64 13
  %131 = call i32 @__put_user(i32 %128, i64* %130)
  %132 = load i32, i32* %7, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %7, align 4
  %134 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %135 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = load i64*, i64** %6, align 8
  %138 = getelementptr inbounds i64, i64* %137, i64 14
  %139 = call i32 @__put_user(i32 %136, i64* %138)
  %140 = load i32, i32* %7, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %7, align 4
  %142 = load %struct.switch_stack*, %struct.switch_stack** %5, align 8
  %143 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %142, i32 0, i32 9
  %144 = load i32, i32* %143, align 4
  %145 = load i64*, i64** %6, align 8
  %146 = getelementptr inbounds i64, i64* %145, i64 15
  %147 = call i32 @__put_user(i32 %144, i64* %146)
  %148 = load i32, i32* %7, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %7, align 4
  %150 = load %struct.switch_stack*, %struct.switch_stack** %5, align 8
  %151 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %150, i32 0, i32 8
  %152 = load i32, i32* %151, align 4
  %153 = load i64*, i64** %6, align 8
  %154 = getelementptr inbounds i64, i64* %153, i64 16
  %155 = call i32 @__put_user(i32 %152, i64* %154)
  %156 = load i32, i32* %7, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %7, align 4
  %158 = load %struct.switch_stack*, %struct.switch_stack** %5, align 8
  %159 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %158, i32 0, i32 7
  %160 = load i32, i32* %159, align 4
  %161 = load i64*, i64** %6, align 8
  %162 = getelementptr inbounds i64, i64* %161, i64 17
  %163 = call i32 @__put_user(i32 %160, i64* %162)
  %164 = load i32, i32* %7, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %7, align 4
  %166 = load %struct.switch_stack*, %struct.switch_stack** %5, align 8
  %167 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 4
  %169 = load i64*, i64** %6, align 8
  %170 = getelementptr inbounds i64, i64* %169, i64 18
  %171 = call i32 @__put_user(i32 %168, i64* %170)
  %172 = load i32, i32* %7, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %7, align 4
  %174 = load %struct.switch_stack*, %struct.switch_stack** %5, align 8
  %175 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 4
  %177 = load i64*, i64** %6, align 8
  %178 = getelementptr inbounds i64, i64* %177, i64 19
  %179 = call i32 @__put_user(i32 %176, i64* %178)
  %180 = load i32, i32* %7, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %7, align 4
  %182 = load %struct.switch_stack*, %struct.switch_stack** %5, align 8
  %183 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 4
  %185 = load i64*, i64** %6, align 8
  %186 = getelementptr inbounds i64, i64* %185, i64 20
  %187 = call i32 @__put_user(i32 %184, i64* %186)
  %188 = load i32, i32* %7, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %7, align 4
  %190 = load %struct.switch_stack*, %struct.switch_stack** %5, align 8
  %191 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = load i64*, i64** %6, align 8
  %194 = getelementptr inbounds i64, i64* %193, i64 21
  %195 = call i32 @__put_user(i32 %192, i64* %194)
  %196 = load i32, i32* %7, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %7, align 4
  %198 = load %struct.switch_stack*, %struct.switch_stack** %5, align 8
  %199 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = load i64*, i64** %6, align 8
  %202 = getelementptr inbounds i64, i64* %201, i64 22
  %203 = call i32 @__put_user(i32 %200, i64* %202)
  %204 = load i32, i32* %7, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %7, align 4
  %206 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %207 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = load i64*, i64** %6, align 8
  %210 = getelementptr inbounds i64, i64* %209, i64 23
  %211 = call i32 @__put_user(i32 %208, i64* %210)
  %212 = load i32, i32* %7, align 4
  %213 = or i32 %212, %211
  store i32 %213, i32* %7, align 4
  %214 = load %struct.switch_stack*, %struct.switch_stack** %5, align 8
  %215 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load i64*, i64** %6, align 8
  %218 = getelementptr inbounds i64, i64* %217, i64 24
  %219 = call i32 @__put_user(i32 %216, i64* %218)
  %220 = load i32, i32* %7, align 4
  %221 = or i32 %220, %219
  store i32 %221, i32* %7, align 4
  %222 = load %struct.switch_stack*, %struct.switch_stack** %5, align 8
  %223 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = load i64*, i64** %6, align 8
  %226 = getelementptr inbounds i64, i64* %225, i64 25
  %227 = call i32 @__put_user(i32 %224, i64* %226)
  %228 = load i32, i32* %7, align 4
  %229 = or i32 %228, %227
  store i32 %229, i32* %7, align 4
  %230 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %231 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load i64*, i64** %6, align 8
  %234 = getelementptr inbounds i64, i64* %233, i64 27
  %235 = call i32 @__put_user(i32 %232, i64* %234)
  %236 = load i32, i32* %7, align 4
  %237 = or i32 %236, %235
  store i32 %237, i32* %7, align 4
  %238 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %239 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = load i64*, i64** %6, align 8
  %242 = getelementptr inbounds i64, i64* %241, i64 28
  %243 = call i32 @__put_user(i32 %240, i64* %242)
  %244 = load i32, i32* %7, align 4
  %245 = or i32 %244, %243
  store i32 %245, i32* %7, align 4
  %246 = load i32, i32* %7, align 4
  ret i32 %246
}

declare dso_local i32 @__put_user(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
