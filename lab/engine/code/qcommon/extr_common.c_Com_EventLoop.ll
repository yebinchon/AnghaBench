; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_common.c_Com_EventLoop.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_common.c_Com_EventLoop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32, i64, i32, i32 }

@MAX_MSGLEN = common dso_local global i32 0, align 4
@SE_NONE = common dso_local global i32 0, align 4
@NS_CLIENT = common dso_local global i32 0, align 4
@NS_SERVER = common dso_local global i32 0, align 4
@com_sv_running = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ERR_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Com_EventLoop: bad event type %i\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Com_EventLoop() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__, align 8
  %7 = load i32, i32* @MAX_MSGLEN, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i32, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = mul nuw i64 4, %8
  %12 = trunc i64 %11 to i32
  %13 = call i32 @MSG_Init(i32* %5, i32* %10, i32 %12)
  br label %14

14:                                               ; preds = %97, %0
  br label %15

15:                                               ; preds = %14
  call void (%struct.TYPE_4__*, ...) @Com_GetEvent(%struct.TYPE_4__* sret %6)
  %16 = bitcast %struct.TYPE_4__* %1 to i8*
  %17 = bitcast %struct.TYPE_4__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 24, i1 false)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @SE_NONE, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %47

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %27, %22
  %24 = load i32, i32* @NS_CLIENT, align 4
  %25 = call i64 @NET_GetLoopPacket(i32 %24, i32* %2, i32* %5)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @CL_PacketEvent(i32 %28, i32* %5)
  br label %23

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %42, %30
  %32 = load i32, i32* @NS_SERVER, align 4
  %33 = call i64 @NET_GetLoopPacket(i32 %32, i32* %2, i32* %5)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** @com_sv_running, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = call i32 @Com_RunAndTimeServerPacket(i32* %2, i32* %5)
  br label %42

42:                                               ; preds = %40, %35
  br label %31

43:                                               ; preds = %31
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %46)
  ret i32 %45

47:                                               ; preds = %15
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %84 [
    i32 129, label %50
    i32 132, label %58
    i32 128, label %62
    i32 130, label %70
    i32 131, label %78
  ]

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @CL_KeyEvent(i32 %52, i32 %54, i32 %56)
  br label %89

58:                                               ; preds = %47
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @CL_CharEvent(i32 %60)
  br label %89

62:                                               ; preds = %47
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @CL_MouseEvent(i32 %64, i32 %66, i32 %68)
  br label %89

70:                                               ; preds = %47
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @CL_JoystickEvent(i32 %72, i32 %74, i32 %76)
  br label %89

78:                                               ; preds = %47
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to i8*
  %82 = call i32 @Cbuf_AddText(i8* %81)
  %83 = call i32 @Cbuf_AddText(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %89

84:                                               ; preds = %47
  %85 = load i32, i32* @ERR_FATAL, align 4
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @Com_Error(i32 %85, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %84, %78, %70, %62, %58, %50
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @Z_Free(i64 %95)
  br label %97

97:                                               ; preds = %93, %89
  br label %14
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MSG_Init(i32*, i32*, i32) #2

declare dso_local void @Com_GetEvent(%struct.TYPE_4__* sret, ...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i64 @NET_GetLoopPacket(i32, i32*, i32*) #2

declare dso_local i32 @CL_PacketEvent(i32, i32*) #2

declare dso_local i32 @Com_RunAndTimeServerPacket(i32*, i32*) #2

declare dso_local i32 @CL_KeyEvent(i32, i32, i32) #2

declare dso_local i32 @CL_CharEvent(i32) #2

declare dso_local i32 @CL_MouseEvent(i32, i32, i32) #2

declare dso_local i32 @CL_JoystickEvent(i32, i32, i32) #2

declare dso_local i32 @Cbuf_AddText(i8*) #2

declare dso_local i32 @Com_Error(i32, i8*, i32) #2

declare dso_local i32 @Z_Free(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
