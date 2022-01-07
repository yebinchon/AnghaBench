; ModuleID = '/home/carl/AnghaBench/lede/target/linux/at91/image/dfboot/src/extr_at45.c_AT91F_DataFlashWrite.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/at91/image/dfboot/src/extr_at45.c_AT91F_DataFlashWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32 }

@AT91C_DATAFLASH_MEMORY_OVERFLOW = common dso_local global i32 0, align 4
@AT91C_DATAFLASH_ERROR = common dso_local global i32 0, align 4
@AT91C_DATAFLASH_TIMEOUT = common dso_local global i32 0, align 4
@DB_BUF1_WRITE = common dso_local global i32 0, align 4
@DB_BUF1_PAGE_PGM = common dso_local global i32 0, align 4
@AT91C_DATAFLASH_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AT91F_DataFlashWrite(%struct.TYPE_9__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @AT91F_SpiEnable(i32 %17)
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = add nsw i32 %19, %20
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %26, %31
  %33 = icmp sgt i32 %21, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %4
  %35 = load i32, i32* @AT91C_DATAFLASH_MEMORY_OVERFLOW, align 4
  store i32 %35, i32* %5, align 4
  br label %190

36:                                               ; preds = %4
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = urem i32 %37, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %89

45:                                               ; preds = %36
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = urem i32 %51, %56
  %58 = sub i32 %50, %57
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %45
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %62, %45
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @AT91F_PartialPageWrite(%struct.TYPE_9__* %65, i8* %66, i32 %67, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %64
  %72 = load i32, i32* @AT91C_DATAFLASH_ERROR, align 4
  store i32 %72, i32* %5, align 4
  br label %190

73:                                               ; preds = %64
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @AT91C_DATAFLASH_TIMEOUT, align 4
  %78 = call i32 @AT91F_DataFlashWaitReady(i32 %76, i32 %77)
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %9, align 4
  %81 = sub i32 %80, %79
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %8, align 4
  %84 = add i32 %83, %82
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load i8*, i8** %7, align 8
  %87 = zext i32 %85 to i64
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  store i8* %88, i8** %7, align 8
  br label %89

89:                                               ; preds = %73, %36
  br label %90

90:                                               ; preds = %142, %89
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = sub nsw i32 %91, %96
  %98 = icmp sge i32 %97, 0
  br i1 %98, label %99, label %170

99:                                               ; preds = %90
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = udiv i32 %100, %105
  store i32 %106, i32* %11, align 4
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %108 = load i32, i32* @DB_BUF1_WRITE, align 4
  %109 = load i8*, i8** %7, align 8
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @AT91F_DataFlashWriteBuffer(%struct.TYPE_9__* %107, i32 %108, i8* %109, i32 0, i32 %114)
  store i32 %115, i32* %12, align 4
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @AT91C_DATAFLASH_TIMEOUT, align 4
  %120 = call i32 @AT91F_DataFlashWaitReady(i32 %118, i32 %119)
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %122 = load i32, i32* %11, align 4
  %123 = call i32 @AT91F_PageErase(%struct.TYPE_9__* %121, i32 %122)
  store i32 %123, i32* %12, align 4
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @AT91C_DATAFLASH_TIMEOUT, align 4
  %128 = call i32 @AT91F_DataFlashWaitReady(i32 %126, i32 %127)
  %129 = load i32, i32* %12, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %99
  %132 = load i32, i32* @AT91C_DATAFLASH_ERROR, align 4
  store i32 %132, i32* %5, align 4
  br label %190

133:                                              ; preds = %99
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %135 = load i32, i32* @DB_BUF1_PAGE_PGM, align 4
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @AT91F_WriteBufferToMain(%struct.TYPE_9__* %134, i32 %135, i32 %136)
  store i32 %137, i32* %12, align 4
  %138 = load i32, i32* %12, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %133
  %141 = load i32, i32* @AT91C_DATAFLASH_ERROR, align 4
  store i32 %141, i32* %5, align 4
  br label %190

142:                                              ; preds = %133
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @AT91C_DATAFLASH_TIMEOUT, align 4
  %147 = call i32 @AT91F_DataFlashWaitReady(i32 %145, i32 %146)
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %9, align 4
  %154 = sub nsw i32 %153, %152
  store i32 %154, i32* %9, align 4
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %8, align 4
  %161 = add nsw i32 %160, %159
  store i32 %161, i32* %8, align 4
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i8*, i8** %7, align 8
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds i8, i8* %167, i64 %168
  store i8* %169, i8** %7, align 8
  br label %90

170:                                              ; preds = %90
  %171 = load i32, i32* %9, align 4
  %172 = icmp sgt i32 %171, 0
  br i1 %172, label %173, label %188

173:                                              ; preds = %170
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %175 = load i8*, i8** %7, align 8
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* %9, align 4
  %178 = call i32 @AT91F_PartialPageWrite(%struct.TYPE_9__* %174, i8* %175, i32 %176, i32 %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %182, label %180

180:                                              ; preds = %173
  %181 = load i32, i32* @AT91C_DATAFLASH_ERROR, align 4
  store i32 %181, i32* %5, align 4
  br label %190

182:                                              ; preds = %173
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @AT91C_DATAFLASH_TIMEOUT, align 4
  %187 = call i32 @AT91F_DataFlashWaitReady(i32 %185, i32 %186)
  br label %188

188:                                              ; preds = %182, %170
  %189 = load i32, i32* @AT91C_DATAFLASH_OK, align 4
  store i32 %189, i32* %5, align 4
  br label %190

190:                                              ; preds = %188, %180, %140, %131, %71, %34
  %191 = load i32, i32* %5, align 4
  ret i32 %191
}

declare dso_local i32 @AT91F_SpiEnable(i32) #1

declare dso_local i32 @AT91F_PartialPageWrite(%struct.TYPE_9__*, i8*, i32, i32) #1

declare dso_local i32 @AT91F_DataFlashWaitReady(i32, i32) #1

declare dso_local i32 @AT91F_DataFlashWriteBuffer(%struct.TYPE_9__*, i32, i8*, i32, i32) #1

declare dso_local i32 @AT91F_PageErase(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @AT91F_WriteBufferToMain(%struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
