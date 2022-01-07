; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_on26.c_on26_test_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_on26.c_on26_test_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@P1 = common dso_local global i32 0, align 4
@P2 = common dso_local global i32 0, align 4
@RESET_WAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"on26: Device reset failed (%x,%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @on26_test_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on26_test_port(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = call i32 (...) @r0()
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = call i32 (...) @r2()
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %4, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  store i32 5, i32* %21, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 3
  store i32 0, i32* %23, align 4
  %24 = call i32 @w2(i32 12)
  %25 = call i32 @CCP(i32 48)
  %26 = call i32 @CCP(i32 0)
  %27 = call i32 @w0(i32 254)
  %28 = call i32 @w0(i32 170)
  %29 = call i32 @w0(i32 85)
  %30 = call i32 @w0(i32 0)
  %31 = call i32 @w0(i32 255)
  %32 = call i32 (...) @r1()
  %33 = and i32 %32, 240
  %34 = shl i32 %33, 4
  store i32 %34, i32* %3, align 4
  %35 = call i32 @w0(i32 135)
  %36 = call i32 (...) @r1()
  %37 = and i32 %36, 240
  %38 = load i32, i32* %3, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %3, align 4
  %40 = call i32 @w0(i32 120)
  %41 = call i32 @w0(i32 32)
  %42 = call i32 @w2(i32 4)
  %43 = call i32 @w2(i32 5)
  %44 = call i32 (...) @r1()
  %45 = and i32 %44, 240
  %46 = ashr i32 %45, 4
  %47 = load i32, i32* %3, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %3, align 4
  %49 = call i32 @w2(i32 4)
  %50 = call i32 @w0(i32 255)
  %51 = load i32, i32* %3, align 4
  %52 = icmp eq i32 %51, 2911
  br i1 %52, label %53, label %118

53:                                               ; preds = %1
  %54 = call i32 @w0(i32 2)
  %55 = load i32, i32* @P1, align 4
  %56 = call i32 @w0(i32 0)
  %57 = load i32, i32* @P2, align 4
  %58 = call i32 @w0(i32 3)
  %59 = load i32, i32* @P1, align 4
  %60 = call i32 @w0(i32 0)
  %61 = load i32, i32* @P2, align 4
  %62 = call i32 @w0(i32 2)
  %63 = load i32, i32* @P1, align 4
  %64 = call i32 @w0(i32 8)
  %65 = load i32, i32* @P2, align 4
  %66 = call i32 @udelay(i32 100)
  %67 = call i32 @w0(i32 2)
  %68 = load i32, i32* @P1, align 4
  %69 = call i32 @w0(i32 10)
  %70 = load i32, i32* @P2, align 4
  %71 = call i32 @udelay(i32 100)
  %72 = call i32 @w0(i32 2)
  %73 = load i32, i32* @P1, align 4
  %74 = call i32 @w0(i32 8)
  %75 = load i32, i32* @P2, align 4
  %76 = call i32 @udelay(i32 1000)
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %78 = call i32 @on26_write_regr(%struct.TYPE_5__* %77, i32 0, i32 6, i32 160)
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %102, %53
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* @RESET_WAIT, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %105

83:                                               ; preds = %79
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %85 = call i32 @on26_write_regr(%struct.TYPE_5__* %84, i32 0, i32 6, i32 160)
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %87 = call i32 @on26_read_regr(%struct.TYPE_5__* %86, i32 0, i32 7)
  store i32 %87, i32* %6, align 4
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %89 = call i32 @on26_write_regr(%struct.TYPE_5__* %88, i32 0, i32 6, i32 176)
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %91 = call i32 @on26_read_regr(%struct.TYPE_5__* %90, i32 0, i32 7)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %6, align 4
  %93 = and i32 %92, 128
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %83
  %96 = load i32, i32* %7, align 4
  %97 = and i32 %96, 128
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %95
  br label %105

100:                                              ; preds = %95, %83
  %101 = call i32 @mdelay(i32 100)
  br label %102

102:                                              ; preds = %100
  %103 = load i32, i32* %3, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %3, align 4
  br label %79

105:                                              ; preds = %99, %79
  %106 = load i32, i32* %3, align 4
  %107 = load i32, i32* @RESET_WAIT, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %109, %105
  %114 = call i32 @w0(i32 4)
  %115 = load i32, i32* @P1, align 4
  %116 = call i32 @w0(i32 4)
  %117 = load i32, i32* @P1, align 4
  br label %118

118:                                              ; preds = %113, %1
  %119 = call i32 @CCP(i32 48)
  %120 = load i32, i32* %5, align 4
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* %4, align 4
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 4
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @w0(i32 %128)
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @w2(i32 %132)
  ret i32 5
}

declare dso_local i32 @r0(...) #1

declare dso_local i32 @r2(...) #1

declare dso_local i32 @w2(i32) #1

declare dso_local i32 @CCP(i32) #1

declare dso_local i32 @w0(i32) #1

declare dso_local i32 @r1(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @on26_write_regr(%struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @on26_read_regr(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @printk(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
