; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_friq.c_friq_test_proto.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_friq.c_friq_test_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"%s: friq: port 0x%x, mode %d, test=(%d,%d,%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i32)* @friq_test_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @friq_test_proto(%struct.TYPE_8__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = bitcast [2 x i32]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 8, i1 false)
  %12 = call i32 (...) @r0()
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = call i32 @w0(i32 255)
  %16 = call i32 @udelay(i32 20)
  %17 = call i32 @CMD(i32 61)
  %18 = call i32 @udelay(i32 500)
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @w0(i32 %21)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = call i32 @friq_connect(%struct.TYPE_8__* %23)
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %62, %3
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 2
  br i1 %27, label %28, label %65

28:                                               ; preds = %25
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = mul nsw i32 %30, 16
  %32 = add nsw i32 160, %31
  %33 = call i32 @friq_write_regr(%struct.TYPE_8__* %29, i32 0, i32 6, i32 %32)
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %58, %28
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 256
  br i1 %36, label %37, label %61

37:                                               ; preds = %34
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %39 = load i32, i32* %8, align 4
  %40 = xor i32 %39, 170
  %41 = call i32 @friq_write_regr(%struct.TYPE_8__* %38, i32 0, i32 2, i32 %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = load i32, i32* %8, align 4
  %44 = xor i32 %43, 85
  %45 = call i32 @friq_write_regr(%struct.TYPE_8__* %42, i32 0, i32 3, i32 %44)
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %47 = call i32 @friq_read_regr(%struct.TYPE_8__* %46, i32 0, i32 2)
  %48 = load i32, i32* %8, align 4
  %49 = xor i32 %48, 170
  %50 = icmp ne i32 %47, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %37
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %51, %37
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %34

61:                                               ; preds = %34
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %25

65:                                               ; preds = %25
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %67 = call i32 @friq_disconnect(%struct.TYPE_8__* %66)
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %69 = call i32 @friq_connect(%struct.TYPE_8__* %68)
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = call i32 @friq_read_block_int(%struct.TYPE_8__* %70, i8* %71, i32 512, i32 16)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %89, %65
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %74, 128
  br i1 %75, label %76, label %92

76:                                               ; preds = %73
  %77 = load i8*, i8** %5, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %76
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %85, %76
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %73

92:                                               ; preds = %73
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %94 = call i32 @friq_disconnect(%struct.TYPE_8__* %93)
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %113

97:                                               ; preds = %92
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %100, i32 %103, i32 %106, i32 %108, i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %97, %92
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %126, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br label %124

124:                                              ; preds = %120, %116
  %125 = phi i1 [ false, %116 ], [ %123, %120 ]
  br label %126

126:                                              ; preds = %124, %113
  %127 = phi i1 [ true, %113 ], [ %125, %124 ]
  %128 = zext i1 %127 to i32
  ret i32 %128
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @r0(...) #2

declare dso_local i32 @w0(i32) #2

declare dso_local i32 @udelay(i32) #2

declare dso_local i32 @CMD(i32) #2

declare dso_local i32 @friq_connect(%struct.TYPE_8__*) #2

declare dso_local i32 @friq_write_regr(%struct.TYPE_8__*, i32, i32, i32) #2

declare dso_local i32 @friq_read_regr(%struct.TYPE_8__*, i32, i32) #2

declare dso_local i32 @friq_disconnect(%struct.TYPE_8__*) #2

declare dso_local i32 @friq_read_block_int(%struct.TYPE_8__*, i8*, i32, i32) #2

declare dso_local i32 @printk(i8*, i32, i32, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
