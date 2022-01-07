; ModuleID = '/home/carl/AnghaBench/lab/q3map2/common/extr_inout.c_xml_SendNode.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/common/extr_inout.c_xml_SendNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i8* }

@MAX_NETMESSAGE = common dso_local global i32 0, align 4
@doc = common dso_local global %struct.TYPE_8__* null, align 8
@brdcst_socket = common dso_local global i64 0, align 8
@SYS_NOXML = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Got to split the buffer\0A\00", align 1
@msg = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xml_SendNode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* @MAX_NETMESSAGE, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** @doc, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @xmlAddChild(i32 %14, i32 %15)
  %17 = load i64, i64* @brdcst_socket, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %80

19:                                               ; preds = %1
  %20 = call %struct.TYPE_7__* (...) @xmlBufferCreate()
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %3, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** @doc, align 8
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @xmlNodeDump(%struct.TYPE_7__* %21, %struct.TYPE_8__* %22, i32 %23, i32 0, i32 0)
  br label %25

25:                                               ; preds = %58, %19
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %77

31:                                               ; preds = %25
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sub nsw i32 %34, %35
  %37 = load i32, i32* @MAX_NETMESSAGE, align 4
  %38 = sub nsw i32 %37, 10
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %31
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sub nsw i32 %43, %44
  store i32 %45, i32* %7, align 4
  br label %49

46:                                               ; preds = %31
  %47 = load i32, i32* @MAX_NETMESSAGE, align 4
  %48 = sub nsw i32 %47, 10
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %46, %40
  %50 = phi i32 [ %45, %40 ], [ %48, %46 ]
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @MAX_NETMESSAGE, align 4
  %53 = sub nsw i32 %52, 10
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* @SYS_NOXML, align 4
  %57 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %49
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @memcpy(i8* %11, i8* %64, i32 %65)
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %11, i64 %68
  store i8 0, i8* %69, align 1
  %70 = call i32 @NMSG_Clear(i32* @msg)
  %71 = call i32 @NMSG_WriteString(i32* @msg, i8* %11)
  %72 = load i64, i64* @brdcst_socket, align 8
  %73 = call i32 @Net_Send(i64 %72, i32* @msg)
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %6, align 4
  br label %25

77:                                               ; preds = %25
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %79 = call i32 @xmlBufferFree(%struct.TYPE_7__* %78)
  br label %80

80:                                               ; preds = %77, %1
  %81 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %81)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @xmlAddChild(i32, i32) #2

declare dso_local %struct.TYPE_7__* @xmlBufferCreate(...) #2

declare dso_local i32 @xmlNodeDump(%struct.TYPE_7__*, %struct.TYPE_8__*, i32, i32, i32) #2

declare dso_local i32 @Sys_FPrintf(i32, i8*, ...) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @NMSG_Clear(i32*) #2

declare dso_local i32 @NMSG_WriteString(i32*, i8*) #2

declare dso_local i32 @Net_Send(i64, i32*) #2

declare dso_local i32 @xmlBufferFree(%struct.TYPE_7__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
