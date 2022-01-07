; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_kexec-bzimage64.c_setup_boot_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_kexec-bzimage64.c_setup_boot_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, i32, i32*, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.kimage = type { i64 }
%struct.boot_params = type { i64, i32, %struct.TYPE_9__*, i32, %struct.TYPE_9__*, %struct.TYPE_9__, %struct.TYPE_8__*, i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64, i64, i32 }
%struct.TYPE_6__ = type { i32 }

@boot_params = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@KEXEC_TYPE_CRASH = common dso_local global i64 0, align 8
@E820_TYPE_RAM = common dso_local global i64 0, align 8
@EDDMAXNR = common dso_local global i32 0, align 4
@EDD_MBR_SIG_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kimage*, %struct.boot_params*, i64, i32, i32, i32)* @setup_boot_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_boot_parameters(%struct.kimage* %0, %struct.boot_params* %1, i64 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.kimage*, align 8
  %9 = alloca %struct.boot_params*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.kimage* %0, %struct.kimage** %8, align 8
  store %struct.boot_params* %1, %struct.boot_params** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @boot_params, i32 0, i32 5, i32 0), align 8
  %21 = load %struct.boot_params*, %struct.boot_params** %9, align 8
  %22 = getelementptr inbounds %struct.boot_params, %struct.boot_params* %21, i32 0, i32 11
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 8
  %24 = load %struct.boot_params*, %struct.boot_params** %9, align 8
  %25 = getelementptr inbounds %struct.boot_params, %struct.boot_params* %24, i32 0, i32 5
  %26 = call i32 @memcpy(%struct.TYPE_9__* %25, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @boot_params, i32 0, i32 4), i32 4)
  %27 = load %struct.boot_params*, %struct.boot_params** %9, align 8
  %28 = getelementptr inbounds %struct.boot_params, %struct.boot_params* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.boot_params*, %struct.boot_params** %9, align 8
  %31 = getelementptr inbounds %struct.boot_params, %struct.boot_params* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @boot_params, i32 0, i32 3), align 8
  %33 = load %struct.boot_params*, %struct.boot_params** %9, align 8
  %34 = getelementptr inbounds %struct.boot_params, %struct.boot_params* %33, i32 0, i32 10
  store i32 %32, i32* %34, align 4
  %35 = load %struct.boot_params*, %struct.boot_params** %9, align 8
  %36 = getelementptr inbounds %struct.boot_params, %struct.boot_params* %35, i32 0, i32 9
  %37 = call i32 @memset(i32* %36, i32 0, i32 4)
  %38 = load %struct.boot_params*, %struct.boot_params** %9, align 8
  %39 = getelementptr inbounds %struct.boot_params, %struct.boot_params* %38, i32 0, i32 8
  %40 = call i32 @memset(i32* %39, i32 0, i32 4)
  %41 = load %struct.boot_params*, %struct.boot_params** %9, align 8
  %42 = getelementptr inbounds %struct.boot_params, %struct.boot_params* %41, i32 0, i32 7
  %43 = call i32 @memset(i32* %42, i32 0, i32 4)
  %44 = load %struct.kimage*, %struct.kimage** %8, align 8
  %45 = getelementptr inbounds %struct.kimage, %struct.kimage* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @KEXEC_TYPE_CRASH, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %6
  %50 = load %struct.kimage*, %struct.kimage** %8, align 8
  %51 = load %struct.boot_params*, %struct.boot_params** %9, align 8
  %52 = call i32 @crash_setup_memmap_entries(%struct.kimage* %50, %struct.boot_params* %51)
  store i32 %52, i32* %19, align 4
  %53 = load i32, i32* %19, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* %19, align 4
  store i32 %56, i32* %7, align 4
  br label %165

57:                                               ; preds = %49
  br label %61

58:                                               ; preds = %6
  %59 = load %struct.boot_params*, %struct.boot_params** %9, align 8
  %60 = call i32 @setup_e820_entries(%struct.boot_params* %59)
  br label %61

61:                                               ; preds = %58, %57
  %62 = load %struct.boot_params*, %struct.boot_params** %9, align 8
  %63 = getelementptr inbounds %struct.boot_params, %struct.boot_params* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %14, align 4
  store i32 0, i32* %18, align 4
  br label %65

65:                                               ; preds = %139, %61
  %66 = load i32, i32* %18, align 4
  %67 = load i32, i32* %14, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %142

69:                                               ; preds = %65
  %70 = load %struct.boot_params*, %struct.boot_params** %9, align 8
  %71 = getelementptr inbounds %struct.boot_params, %struct.boot_params* %70, i32 0, i32 6
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = load i32, i32* %18, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @E820_TYPE_RAM, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %69
  br label %139

81:                                               ; preds = %69
  %82 = load %struct.boot_params*, %struct.boot_params** %9, align 8
  %83 = getelementptr inbounds %struct.boot_params, %struct.boot_params* %82, i32 0, i32 6
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = load i32, i32* %18, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %16, align 8
  %90 = load %struct.boot_params*, %struct.boot_params** %9, align 8
  %91 = getelementptr inbounds %struct.boot_params, %struct.boot_params* %90, i32 0, i32 6
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = load i32, i32* %18, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.boot_params*, %struct.boot_params** %9, align 8
  %99 = getelementptr inbounds %struct.boot_params, %struct.boot_params* %98, i32 0, i32 6
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = load i32, i32* %18, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = add i64 %97, %106
  %108 = sub i64 %107, 1
  store i64 %108, i64* %17, align 8
  %109 = load i64, i64* %16, align 8
  %110 = icmp ule i64 %109, 1048576
  br i1 %110, label %111, label %138

111:                                              ; preds = %81
  %112 = load i64, i64* %17, align 8
  %113 = icmp ugt i64 %112, 1048576
  br i1 %113, label %114, label %138

114:                                              ; preds = %111
  %115 = load i64, i64* %17, align 8
  %116 = lshr i64 %115, 10
  %117 = sub i64 %116, 1024
  store i64 %117, i64* %15, align 8
  %118 = load i64, i64* %15, align 8
  %119 = load %struct.boot_params*, %struct.boot_params** %9, align 8
  %120 = getelementptr inbounds %struct.boot_params, %struct.boot_params* %119, i32 0, i32 5
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  store i64 %118, i64* %121, align 8
  %122 = load i64, i64* %15, align 8
  %123 = load %struct.boot_params*, %struct.boot_params** %9, align 8
  %124 = getelementptr inbounds %struct.boot_params, %struct.boot_params* %123, i32 0, i32 0
  store i64 %122, i64* %124, align 8
  %125 = load i64, i64* %15, align 8
  %126 = icmp ugt i64 %125, 64512
  br i1 %126, label %127, label %131

127:                                              ; preds = %114
  %128 = load %struct.boot_params*, %struct.boot_params** %9, align 8
  %129 = getelementptr inbounds %struct.boot_params, %struct.boot_params* %128, i32 0, i32 5
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  store i64 64512, i64* %130, align 8
  br label %131

131:                                              ; preds = %127, %114
  %132 = load i64, i64* %15, align 8
  %133 = icmp ugt i64 %132, 4294967295
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load %struct.boot_params*, %struct.boot_params** %9, align 8
  %136 = getelementptr inbounds %struct.boot_params, %struct.boot_params* %135, i32 0, i32 0
  store i64 4294967295, i64* %136, align 8
  br label %137

137:                                              ; preds = %134, %131
  br label %138

138:                                              ; preds = %137, %111, %81
  br label %139

139:                                              ; preds = %138, %80
  %140 = load i32, i32* %18, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %18, align 4
  br label %65

142:                                              ; preds = %65
  %143 = load %struct.boot_params*, %struct.boot_params** %9, align 8
  %144 = getelementptr inbounds %struct.boot_params, %struct.boot_params* %143, i32 0, i32 4
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %144, align 8
  %146 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @boot_params, i32 0, i32 2), align 8
  %147 = load i32, i32* @EDDMAXNR, align 4
  %148 = sext i32 %147 to i64
  %149 = mul i64 %148, 4
  %150 = trunc i64 %149 to i32
  %151 = call i32 @memcpy(%struct.TYPE_9__* %145, i32* %146, i32 %150)
  %152 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @boot_params, i32 0, i32 1), align 8
  %153 = load %struct.boot_params*, %struct.boot_params** %9, align 8
  %154 = getelementptr inbounds %struct.boot_params, %struct.boot_params* %153, i32 0, i32 3
  store i32 %152, i32* %154, align 8
  %155 = load %struct.boot_params*, %struct.boot_params** %9, align 8
  %156 = getelementptr inbounds %struct.boot_params, %struct.boot_params* %155, i32 0, i32 2
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %156, align 8
  %158 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @boot_params, i32 0, i32 0), align 8
  %159 = load i32, i32* @EDD_MBR_SIG_MAX, align 4
  %160 = sext i32 %159 to i64
  %161 = mul i64 %160, 4
  %162 = trunc i64 %161 to i32
  %163 = call i32 @memcpy(%struct.TYPE_9__* %157, i32* %158, i32 %162)
  %164 = load i32, i32* %19, align 4
  store i32 %164, i32* %7, align 4
  br label %165

165:                                              ; preds = %142, %55
  %166 = load i32, i32* %7, align 4
  ret i32 %166
}

declare dso_local i32 @memcpy(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @crash_setup_memmap_entries(%struct.kimage*, %struct.boot_params*) #1

declare dso_local i32 @setup_e820_entries(%struct.boot_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
