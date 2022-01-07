; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_ambassador.c_amb_esi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_ambassador.c_amb_esi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@SRB_GET_BIA = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@DBG_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"BIA: lower4: %08x, upper2 %04x\00", align 1
@DBG_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"ESI:\00", align 1
@ESI_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @amb_esi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amb_esi(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32, i32* @SRB_GET_BIA, align 4
  %10 = call i32 @cpu_to_be32(i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  br label %12

12:                                               ; preds = %16, %2
  %13 = load i32*, i32** %3, align 8
  %14 = call i64 @command_do(i32* %13, %struct.TYPE_7__* %7)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %18 = call i32 @set_current_state(i32 %17)
  %19 = call i32 (...) @schedule()
  br label %12

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @be32_to_cpu(i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @be32_to_cpu(i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* @DBG_LOAD, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @PRINTD(i32 %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load i32*, i32** %4, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %82

37:                                               ; preds = %20
  %38 = load i32, i32* @DBG_INIT, align 4
  %39 = call i32 @PRINTDB(i32 %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %76, %37
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @ESI_LEN, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %79

44:                                               ; preds = %40
  %45 = load i32, i32* %8, align 4
  %46 = icmp ult i32 %45, 4
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %8, align 4
  %50 = mul i32 8, %49
  %51 = ashr i32 %48, %50
  %52 = call i32 @bitrev8(i32 %51)
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* %8, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %52, i32* %56, align 4
  br label %68

57:                                               ; preds = %44
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %8, align 4
  %60 = sub i32 %59, 4
  %61 = mul i32 8, %60
  %62 = ashr i32 %58, %61
  %63 = call i32 @bitrev8(i32 %62)
  %64 = load i32*, i32** %4, align 8
  %65 = load i32, i32* %8, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %63, i32* %67, align 4
  br label %68

68:                                               ; preds = %57, %47
  %69 = load i32, i32* @DBG_INIT, align 4
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* %8, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @PRINTDM(i32 %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %68
  %77 = load i32, i32* %8, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %40

79:                                               ; preds = %40
  %80 = load i32, i32* @DBG_INIT, align 4
  %81 = call i32 @PRINTDE(i32 %80, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %20
  ret void
}

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i64 @command_do(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @PRINTD(i32, i8*, i32, i32) #1

declare dso_local i32 @PRINTDB(i32, i8*) #1

declare dso_local i32 @bitrev8(i32) #1

declare dso_local i32 @PRINTDM(i32, i8*, i32) #1

declare dso_local i32 @PRINTDE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
