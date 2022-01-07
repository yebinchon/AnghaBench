; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_net_ip.c_NET_Event.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_net_ip.c_NET_Event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { float }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { i32 }

@MAX_MSGLEN = common dso_local global i32 0, align 4
@net_dropsim = common dso_local global %struct.TYPE_8__* null, align 8
@RAND_MAX = common dso_local global i64 0, align 8
@com_sv_running = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NET_Event(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = load i32, i32* @MAX_MSGLEN, align 4
  %8 = add nsw i32 %7, 1
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  %12 = bitcast %struct.TYPE_7__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 4, i1 false)
  br label %13

13:                                               ; preds = %58, %43, %1
  br label %14

14:                                               ; preds = %13
  %15 = mul nuw i64 4, %9
  %16 = trunc i64 %15 to i32
  %17 = call i32 @MSG_Init(i32* %6, i32* %11, i32 %16)
  %18 = load i32*, i32** %2, align 8
  %19 = call i64 @NET_GetPacket(%struct.TYPE_7__* %5, i32* %6, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %57

21:                                               ; preds = %14
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** @net_dropsim, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load float, float* %23, align 4
  %25 = fcmp ogt float %24, 0.000000e+00
  br i1 %25, label %26, label %45

26:                                               ; preds = %21
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** @net_dropsim, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load float, float* %28, align 4
  %30 = fcmp ole float %29, 1.000000e+02
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = call i32 (...) @rand()
  %33 = load i64, i64* @RAND_MAX, align 8
  %34 = sitofp i64 %33 to double
  %35 = fdiv double %34, 1.000000e+02
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** @net_dropsim, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load float, float* %37, align 4
  %39 = fpext float %38 to double
  %40 = fmul double %35, %39
  %41 = fptosi double %40 to i32
  %42 = icmp slt i32 %32, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  br label %13

44:                                               ; preds = %31
  br label %45

45:                                               ; preds = %44, %26, %21
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** @com_sv_running, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = call i32 @Com_RunAndTimeServerPacket(%struct.TYPE_7__* %5, i32* %6)
  br label %56

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @CL_PacketEvent(i32 %54, i32* %6)
  br label %56

56:                                               ; preds = %52, %50
  br label %58

57:                                               ; preds = %14
  br label %59

58:                                               ; preds = %56
  br label %13

59:                                               ; preds = %57
  %60 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %60)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @MSG_Init(i32*, i32*, i32) #3

declare dso_local i64 @NET_GetPacket(%struct.TYPE_7__*, i32*, i32*) #3

declare dso_local i32 @rand(...) #3

declare dso_local i32 @Com_RunAndTimeServerPacket(%struct.TYPE_7__*, i32*) #3

declare dso_local i32 @CL_PacketEvent(i32, i32*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
