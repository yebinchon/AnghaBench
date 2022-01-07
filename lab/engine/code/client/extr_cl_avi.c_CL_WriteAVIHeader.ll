; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_avi.c_CL_WriteAVIHeader.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_avi.c_CL_WriteAVIHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_3__, i64, i64, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@bufIndex = common dso_local global i64 0, align 8
@afd = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [5 x i8] c"RIFF\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"AVI \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"LIST\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"hdrl\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"avih\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"strl\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"strh\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"vids\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"MJPG\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"strf\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"auds\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"movi\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_WriteAVIHeader() #0 {
  store i64 0, i64* @bufIndex, align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @afd, i32 0, i32 10), align 8
  %1 = call i32 @START_CHUNK(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 @WRITE_STRING(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %3 = call i32 @START_CHUNK(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %4 = call i32 @WRITE_STRING(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %5 = call i32 @WRITE_STRING(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %6 = call i32 @WRITE_4BYTES(i32 56)
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @afd, i32 0, i32 0), align 8
  %8 = call i32 @WRITE_4BYTES(i32 %7)
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @afd, i32 0, i32 1), align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @afd, i32 0, i32 2), align 8
  %11 = mul nsw i32 %9, %10
  %12 = call i32 @WRITE_4BYTES(i32 %11)
  %13 = call i32 @WRITE_4BYTES(i32 0)
  %14 = call i32 @WRITE_4BYTES(i32 272)
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @afd, i32 0, i32 3), align 4
  %16 = call i32 @WRITE_4BYTES(i32 %15)
  %17 = call i32 @WRITE_4BYTES(i32 0)
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @afd, i32 0, i32 8), align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %0
  %21 = call i32 @WRITE_4BYTES(i32 2)
  br label %24

22:                                               ; preds = %0
  %23 = call i32 @WRITE_4BYTES(i32 1)
  br label %24

24:                                               ; preds = %22, %20
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @afd, i32 0, i32 1), align 4
  %26 = call i32 @WRITE_4BYTES(i32 %25)
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @afd, i32 0, i32 4), align 8
  %28 = call i32 @WRITE_4BYTES(i32 %27)
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @afd, i32 0, i32 5), align 4
  %30 = call i32 @WRITE_4BYTES(i32 %29)
  %31 = call i32 @WRITE_4BYTES(i32 0)
  %32 = call i32 @WRITE_4BYTES(i32 0)
  %33 = call i32 @WRITE_4BYTES(i32 0)
  %34 = call i32 @WRITE_4BYTES(i32 0)
  %35 = call i32 @START_CHUNK(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %36 = call i32 @WRITE_STRING(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %37 = call i32 @WRITE_STRING(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %38 = call i32 @WRITE_4BYTES(i32 56)
  %39 = call i32 @WRITE_STRING(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @afd, i32 0, i32 9), align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %24
  %43 = call i32 @WRITE_STRING(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %46

44:                                               ; preds = %24
  %45 = call i32 @WRITE_4BYTES(i32 0)
  br label %46

46:                                               ; preds = %44, %42
  %47 = call i32 @WRITE_4BYTES(i32 0)
  %48 = call i32 @WRITE_4BYTES(i32 0)
  %49 = call i32 @WRITE_4BYTES(i32 0)
  %50 = call i32 @WRITE_4BYTES(i32 1)
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @afd, i32 0, i32 2), align 8
  %52 = call i32 @WRITE_4BYTES(i32 %51)
  %53 = call i32 @WRITE_4BYTES(i32 0)
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @afd, i32 0, i32 3), align 4
  %55 = call i32 @WRITE_4BYTES(i32 %54)
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @afd, i32 0, i32 1), align 4
  %57 = call i32 @WRITE_4BYTES(i32 %56)
  %58 = call i32 @WRITE_4BYTES(i32 -1)
  %59 = call i32 @WRITE_4BYTES(i32 0)
  %60 = call i32 @WRITE_2BYTES(i32 0)
  %61 = call i32 @WRITE_2BYTES(i32 0)
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @afd, i32 0, i32 4), align 8
  %63 = call i32 @WRITE_2BYTES(i32 %62)
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @afd, i32 0, i32 5), align 4
  %65 = call i32 @WRITE_2BYTES(i32 %64)
  %66 = call i32 @WRITE_STRING(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %67 = call i32 @WRITE_4BYTES(i32 40)
  %68 = call i32 @WRITE_4BYTES(i32 40)
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @afd, i32 0, i32 4), align 8
  %70 = call i32 @WRITE_4BYTES(i32 %69)
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @afd, i32 0, i32 5), align 4
  %72 = call i32 @WRITE_4BYTES(i32 %71)
  %73 = call i32 @WRITE_2BYTES(i32 1)
  %74 = call i32 @WRITE_2BYTES(i32 24)
  %75 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @afd, i32 0, i32 9), align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %46
  %78 = call i32 @WRITE_STRING(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @afd, i32 0, i32 4), align 8
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @afd, i32 0, i32 5), align 4
  %81 = mul nsw i32 %79, %80
  %82 = call i32 @WRITE_4BYTES(i32 %81)
  br label %90

83:                                               ; preds = %46
  %84 = call i32 @WRITE_4BYTES(i32 0)
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @afd, i32 0, i32 4), align 8
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @afd, i32 0, i32 5), align 4
  %87 = mul nsw i32 %85, %86
  %88 = mul nsw i32 %87, 3
  %89 = call i32 @WRITE_4BYTES(i32 %88)
  br label %90

90:                                               ; preds = %83, %77
  %91 = call i32 @WRITE_4BYTES(i32 0)
  %92 = call i32 @WRITE_4BYTES(i32 0)
  %93 = call i32 @WRITE_4BYTES(i32 0)
  %94 = call i32 @WRITE_4BYTES(i32 0)
  %95 = call i32 (...) @END_CHUNK()
  %96 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @afd, i32 0, i32 8), align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %145

98:                                               ; preds = %90
  %99 = call i32 @START_CHUNK(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %100 = call i32 @WRITE_STRING(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %101 = call i32 @WRITE_STRING(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %102 = call i32 @WRITE_4BYTES(i32 56)
  %103 = call i32 @WRITE_STRING(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %104 = call i32 @WRITE_4BYTES(i32 0)
  %105 = call i32 @WRITE_4BYTES(i32 0)
  %106 = call i32 @WRITE_4BYTES(i32 0)
  %107 = call i32 @WRITE_4BYTES(i32 0)
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @afd, i32 0, i32 7, i32 0), align 8
  %109 = call i32 @WRITE_4BYTES(i32 %108)
  %110 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @afd, i32 0, i32 7, i32 0), align 8
  %111 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @afd, i32 0, i32 7, i32 1), align 4
  %112 = mul nsw i32 %110, %111
  %113 = call i32 @WRITE_4BYTES(i32 %112)
  %114 = call i32 @WRITE_4BYTES(i32 0)
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @afd, i32 0, i32 7, i32 2), align 8
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @afd, i32 0, i32 7, i32 0), align 8
  %117 = sdiv i32 %115, %116
  %118 = call i32 @WRITE_4BYTES(i32 %117)
  %119 = call i32 @WRITE_4BYTES(i32 0)
  %120 = call i32 @WRITE_4BYTES(i32 -1)
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @afd, i32 0, i32 7, i32 0), align 8
  %122 = call i32 @WRITE_4BYTES(i32 %121)
  %123 = call i32 @WRITE_2BYTES(i32 0)
  %124 = call i32 @WRITE_2BYTES(i32 0)
  %125 = call i32 @WRITE_2BYTES(i32 0)
  %126 = call i32 @WRITE_2BYTES(i32 0)
  %127 = call i32 @WRITE_STRING(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %128 = call i32 @WRITE_4BYTES(i32 18)
  %129 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @afd, i32 0, i32 7, i32 3), align 4
  %130 = call i32 @WRITE_2BYTES(i32 %129)
  %131 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @afd, i32 0, i32 7, i32 4), align 8
  %132 = call i32 @WRITE_2BYTES(i32 %131)
  %133 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @afd, i32 0, i32 7, i32 1), align 4
  %134 = call i32 @WRITE_4BYTES(i32 %133)
  %135 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @afd, i32 0, i32 7, i32 0), align 8
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @afd, i32 0, i32 7, i32 1), align 4
  %137 = mul nsw i32 %135, %136
  %138 = call i32 @WRITE_4BYTES(i32 %137)
  %139 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @afd, i32 0, i32 7, i32 0), align 8
  %140 = call i32 @WRITE_2BYTES(i32 %139)
  %141 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @afd, i32 0, i32 7, i32 5), align 4
  %142 = call i32 @WRITE_2BYTES(i32 %141)
  %143 = call i32 @WRITE_2BYTES(i32 0)
  %144 = call i32 (...) @END_CHUNK()
  br label %145

145:                                              ; preds = %98, %90
  %146 = call i32 (...) @END_CHUNK()
  %147 = load i64, i64* @bufIndex, align 8
  store i64 %147, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @afd, i32 0, i32 6), align 8
  %148 = call i32 @START_CHUNK(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %149 = call i32 @WRITE_STRING(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  ret void
}

declare dso_local i32 @START_CHUNK(i8*) #1

declare dso_local i32 @WRITE_STRING(i8*) #1

declare dso_local i32 @WRITE_4BYTES(i32) #1

declare dso_local i32 @WRITE_2BYTES(i32) #1

declare dso_local i32 @END_CHUNK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
