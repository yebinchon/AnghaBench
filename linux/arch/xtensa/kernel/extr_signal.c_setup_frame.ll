; ModuleID = '/home/carl/AnghaBench/linux/arch/xtensa/kernel/extr_signal.c_setup_frame.c'
source_filename = "/home/carl/AnghaBench/linux/arch/xtensa/kernel/extr_signal.c_setup_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i32, i32 }
%struct.ksignal = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64, i64 }
%struct.pt_regs = type { i64*, i32, i64, i64, i32 }
%struct.rt_sigframe = type { %struct.TYPE_7__, i32, i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@SA_ONSTACK = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"Double exception sys_sigreturn\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@SA_SIGINFO = common dso_local global i32 0, align 4
@SA_RESTORER = common dso_local global i32 0, align 4
@PS_WOE_MASK = common dso_local global i64 0, align 8
@PS_CALLINC_MASK = common dso_local global i64 0, align 8
@PS_OWB_MASK = common dso_local global i64 0, align 8
@PS_CALLINC_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"SIG rt deliver (%s:%d): signal=%d sp=%p pc=%08lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ksignal*, i32*, %struct.pt_regs*)* @setup_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_frame(%struct.ksignal* %0, i32* %1, %struct.pt_regs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ksignal*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca %struct.rt_sigframe*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.ksignal* %0, %struct.ksignal** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.pt_regs* %2, %struct.pt_regs** %7, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.ksignal*, %struct.ksignal** %5, align 8
  %17 = getelementptr inbounds %struct.ksignal, %struct.ksignal* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %10, align 4
  %19 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %20 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %11, align 8
  %24 = load %struct.ksignal*, %struct.ksignal** %5, align 8
  %25 = getelementptr inbounds %struct.ksignal, %struct.ksignal* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @SA_ONSTACK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %3
  %33 = load i64, i64* %11, align 8
  %34 = call i64 @sas_ss_flags(i64 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %39, %42
  store i64 %43, i64* %11, align 8
  br label %44

44:                                               ; preds = %36, %32, %3
  %45 = load i64, i64* %11, align 8
  %46 = sub i64 %45, 32
  %47 = and i64 %46, -16
  %48 = inttoptr i64 %47 to i8*
  %49 = bitcast i8* %48 to %struct.rt_sigframe*
  store %struct.rt_sigframe* %49, %struct.rt_sigframe** %8, align 8
  %50 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %51 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp sgt i32 %52, 64
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = call i32 @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %44
  %57 = load %struct.rt_sigframe*, %struct.rt_sigframe** %8, align 8
  %58 = call i32 @access_ok(%struct.rt_sigframe* %57, i32 32)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* @EFAULT, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %242

63:                                               ; preds = %56
  %64 = load %struct.ksignal*, %struct.ksignal** %5, align 8
  %65 = getelementptr inbounds %struct.ksignal, %struct.ksignal* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @SA_SIGINFO, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %63
  %73 = load %struct.rt_sigframe*, %struct.rt_sigframe** %8, align 8
  %74 = getelementptr inbounds %struct.rt_sigframe, %struct.rt_sigframe* %73, i32 0, i32 1
  %75 = load %struct.ksignal*, %struct.ksignal** %5, align 8
  %76 = getelementptr inbounds %struct.ksignal, %struct.ksignal* %75, i32 0, i32 2
  %77 = call i32 @copy_siginfo_to_user(i32* %74, i32* %76)
  %78 = load i32, i32* %9, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %72, %63
  %81 = load %struct.rt_sigframe*, %struct.rt_sigframe** %8, align 8
  %82 = getelementptr inbounds %struct.rt_sigframe, %struct.rt_sigframe* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 3
  %84 = call i32 @__put_user(i32 0, i32* %83)
  %85 = load i32, i32* %9, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %9, align 4
  %87 = load %struct.rt_sigframe*, %struct.rt_sigframe** %8, align 8
  %88 = getelementptr inbounds %struct.rt_sigframe, %struct.rt_sigframe* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 2
  %90 = call i32 @__put_user(i32 0, i32* %89)
  %91 = load i32, i32* %9, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %9, align 4
  %93 = load %struct.rt_sigframe*, %struct.rt_sigframe** %8, align 8
  %94 = getelementptr inbounds %struct.rt_sigframe, %struct.rt_sigframe* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %97 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %96, i32 0, i32 0
  %98 = load i64*, i64** %97, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 1
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @__save_altstack(i32* %95, i64 %100)
  %102 = load i32, i32* %9, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %9, align 4
  %104 = load %struct.rt_sigframe*, %struct.rt_sigframe** %8, align 8
  %105 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %106 = call i32 @setup_sigcontext(%struct.rt_sigframe* %104, %struct.pt_regs* %105)
  %107 = load i32, i32* %9, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %9, align 4
  %109 = load %struct.rt_sigframe*, %struct.rt_sigframe** %8, align 8
  %110 = getelementptr inbounds %struct.rt_sigframe, %struct.rt_sigframe* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32*, i32** %6, align 8
  %113 = call i32 @__copy_to_user(i32* %111, i32* %112, i32 4)
  %114 = load i32, i32* %9, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %9, align 4
  %116 = load %struct.ksignal*, %struct.ksignal** %5, align 8
  %117 = getelementptr inbounds %struct.ksignal, %struct.ksignal* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @SA_RESTORER, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %80
  %125 = load %struct.ksignal*, %struct.ksignal** %5, align 8
  %126 = getelementptr inbounds %struct.ksignal, %struct.ksignal* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  store i64 %129, i64* %12, align 8
  br label %146

130:                                              ; preds = %80
  %131 = load %struct.rt_sigframe*, %struct.rt_sigframe** %8, align 8
  %132 = getelementptr inbounds %struct.rt_sigframe, %struct.rt_sigframe* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @gen_return_code(i64 %133)
  %135 = load i32, i32* %9, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %9, align 4
  %137 = load i32, i32* %9, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %130
  %140 = load i32, i32* @EFAULT, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %4, align 4
  br label %242

142:                                              ; preds = %130
  %143 = load %struct.rt_sigframe*, %struct.rt_sigframe** %8, align 8
  %144 = getelementptr inbounds %struct.rt_sigframe, %struct.rt_sigframe* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  store i64 %145, i64* %12, align 8
  br label %146

146:                                              ; preds = %142, %124
  %147 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %148 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  store i64 %149, i64* %13, align 8
  %150 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %151 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  store i64 %152, i64* %14, align 8
  %153 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %154 = load %struct.ksignal*, %struct.ksignal** %5, align 8
  %155 = getelementptr inbounds %struct.ksignal, %struct.ksignal* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.rt_sigframe*, %struct.rt_sigframe** %8, align 8
  %160 = ptrtoint %struct.rt_sigframe* %159 to i64
  %161 = call i32 @start_thread(%struct.pt_regs* %153, i64 %158, i64 %160)
  %162 = load i64, i64* %14, align 8
  %163 = load i64, i64* @PS_WOE_MASK, align 8
  %164 = and i64 %162, %163
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %186

166:                                              ; preds = %146
  store i32 4, i32* %15, align 4
  %167 = load i64, i64* %12, align 8
  %168 = and i64 %167, 1073741823
  %169 = or i64 %168, 1073741824
  %170 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %171 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %170, i32 0, i32 0
  %172 = load i64*, i64** %171, align 8
  %173 = load i32, i32* %15, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds i64, i64* %172, i64 %174
  store i64 %169, i64* %175, align 8
  %176 = load i64, i64* %14, align 8
  %177 = load i64, i64* @PS_CALLINC_MASK, align 8
  %178 = load i64, i64* @PS_OWB_MASK, align 8
  %179 = or i64 %177, %178
  %180 = xor i64 %179, -1
  %181 = and i64 %176, %180
  %182 = load i32, i32* @PS_CALLINC_SHIFT, align 4
  %183 = shl i32 1, %182
  %184 = sext i32 %183 to i64
  %185 = or i64 %181, %184
  store i64 %185, i64* %14, align 8
  br label %194

186:                                              ; preds = %146
  store i32 0, i32* %15, align 4
  %187 = load i64, i64* %12, align 8
  %188 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %189 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %188, i32 0, i32 0
  %190 = load i64*, i64** %189, align 8
  %191 = load i32, i32* %15, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds i64, i64* %190, i64 %192
  store i64 %187, i64* %193, align 8
  br label %194

194:                                              ; preds = %186, %166
  %195 = load i32, i32* %10, align 4
  %196 = sext i32 %195 to i64
  %197 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %198 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %197, i32 0, i32 0
  %199 = load i64*, i64** %198, align 8
  %200 = load i32, i32* %15, align 4
  %201 = add i32 %200, 2
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds i64, i64* %199, i64 %202
  store i64 %196, i64* %203, align 8
  %204 = load %struct.rt_sigframe*, %struct.rt_sigframe** %8, align 8
  %205 = getelementptr inbounds %struct.rt_sigframe, %struct.rt_sigframe* %204, i32 0, i32 1
  %206 = ptrtoint i32* %205 to i64
  %207 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %208 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %207, i32 0, i32 0
  %209 = load i64*, i64** %208, align 8
  %210 = load i32, i32* %15, align 4
  %211 = add i32 %210, 3
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds i64, i64* %209, i64 %212
  store i64 %206, i64* %213, align 8
  %214 = load %struct.rt_sigframe*, %struct.rt_sigframe** %8, align 8
  %215 = getelementptr inbounds %struct.rt_sigframe, %struct.rt_sigframe* %214, i32 0, i32 0
  %216 = ptrtoint %struct.TYPE_7__* %215 to i64
  %217 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %218 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %217, i32 0, i32 0
  %219 = load i64*, i64** %218, align 8
  %220 = load i32, i32* %15, align 4
  %221 = add i32 %220, 4
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds i64, i64* %219, i64 %222
  store i64 %216, i64* %223, align 8
  %224 = load i64, i64* %13, align 8
  %225 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %226 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %225, i32 0, i32 2
  store i64 %224, i64* %226, align 8
  %227 = load i64, i64* %14, align 8
  %228 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %229 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %228, i32 0, i32 3
  store i64 %227, i64* %229, align 8
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* %10, align 4
  %237 = load %struct.rt_sigframe*, %struct.rt_sigframe** %8, align 8
  %238 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %239 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %238, i32 0, i32 4
  %240 = load i32, i32* %239, align 8
  %241 = call i32 @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %232, i32 %235, i32 %236, %struct.rt_sigframe* %237, i32 %240)
  store i32 0, i32* %4, align 4
  br label %242

242:                                              ; preds = %194, %139, %60
  %243 = load i32, i32* %4, align 4
  ret i32 %243
}

declare dso_local i64 @sas_ss_flags(i64) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @access_ok(%struct.rt_sigframe*, i32) #1

declare dso_local i32 @copy_siginfo_to_user(i32*, i32*) #1

declare dso_local i32 @__put_user(i32, i32*) #1

declare dso_local i32 @__save_altstack(i32*, i64) #1

declare dso_local i32 @setup_sigcontext(%struct.rt_sigframe*, %struct.pt_regs*) #1

declare dso_local i32 @__copy_to_user(i32*, i32*, i32) #1

declare dso_local i32 @gen_return_code(i64) #1

declare dso_local i32 @start_thread(%struct.pt_regs*, i64, i64) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, %struct.rt_sigframe*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
