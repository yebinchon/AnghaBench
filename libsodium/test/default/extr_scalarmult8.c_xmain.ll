; ModuleID = '/home/carl/AnghaBench/libsodium/test/default/extr_scalarmult8.c_xmain.c'
source_filename = "/home/carl/AnghaBench/libsodium/test/default/extr_scalarmult8.c_xmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i32, i32 }

@crypto_scalarmult_SCALARBYTES = common dso_local global i32 0, align 4
@crypto_scalarmult_BYTES = common dso_local global i32 0, align 4
@test_data = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"acceptable\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"test case %u succeeded (%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"valid\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"*** test case %u succeeded, was supposed to be %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"*** test case %u succeeded, but shared key is not %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"test case %u failed (%s)\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"*** test case %u failed, was supposed to be %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %9 = load i32, i32* @crypto_scalarmult_SCALARBYTES, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %2, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %3, align 8
  %13 = load i32, i32* @crypto_scalarmult_BYTES, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %4, align 8
  %16 = load i32, i32* @crypto_scalarmult_BYTES, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %5, align 8
  %19 = load i32, i32* @crypto_scalarmult_BYTES, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %152, %0
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %24, 0
  br i1 %25, label %26, label %155

26:                                               ; preds = %22
  %27 = load i32, i32* @crypto_scalarmult_SCALARBYTES, align 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %29 = load i32, i32* %7, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @crypto_scalarmult_SCALARBYTES, align 4
  %35 = mul nsw i32 %34, 2
  %36 = call i32 @sodium_hex2bin(i8* %12, i32 %27, i32 %33, i32 %35, i32* null, i32* null, i32* null)
  %37 = load i32, i32* @crypto_scalarmult_BYTES, align 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %39 = load i32, i32* %7, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @crypto_scalarmult_BYTES, align 4
  %45 = mul nsw i32 %44, 2
  %46 = call i32 @sodium_hex2bin(i8* %15, i32 %37, i32 %43, i32 %45, i32* null, i32* null, i32* null)
  %47 = load i32, i32* @crypto_scalarmult_BYTES, align 4
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %49 = load i32, i32* %7, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @crypto_scalarmult_BYTES, align 4
  %55 = mul nsw i32 %54, 2
  %56 = call i32 @sodium_hex2bin(i8* %18, i32 %47, i32 %53, i32 %55, i32* null, i32* null, i32* null)
  %57 = load i32, i32* @crypto_scalarmult_BYTES, align 4
  %58 = call i32 @randombytes_buf(i8* %21, i32 %57)
  %59 = call i32 @crypto_scalarmult(i8* %21, i8* %12, i8* %15)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %113

62:                                               ; preds = %26
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %64 = load i32, i32* %7, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i64 @strcmp(i8* %68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %62
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %74 = load i32, i32* %7, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %72, i8* %78)
  br label %99

80:                                               ; preds = %62
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %82 = load i32, i32* %7, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i64 @strcmp(i8* %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %80
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %92 = load i32, i32* %7, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %90, i8* %96)
  br label %98

98:                                               ; preds = %89, %80
  br label %99

99:                                               ; preds = %98, %71
  %100 = load i32, i32* @crypto_scalarmult_BYTES, align 4
  %101 = call i64 @memcmp(i8* %18, i8* %21, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %99
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %106 = load i32, i32* %7, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %104, i8* %110)
  br label %112

112:                                              ; preds = %103, %99
  br label %151

113:                                              ; preds = %26
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %115 = load i32, i32* %7, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = call i64 @strcmp(i8* %119, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %113
  %123 = load i32, i32* %7, align 4
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %125 = load i32, i32* %7, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %123, i8* %129)
  br label %150

131:                                              ; preds = %113
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %133 = load i32, i32* %7, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = call i64 @strcmp(i8* %137, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %149

140:                                              ; preds = %131
  %141 = load i32, i32* %7, align 4
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test_data, align 8
  %143 = load i32, i32* %7, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %141, i8* %147)
  br label %149

149:                                              ; preds = %140, %131
  br label %150

150:                                              ; preds = %149, %122
  br label %151

151:                                              ; preds = %150, %112
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %7, align 4
  %154 = add i32 %153, 1
  store i32 %154, i32* %7, align 4
  br label %22

155:                                              ; preds = %22
  %156 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  %157 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %157)
  %158 = load i32, i32* %1, align 4
  ret i32 %158
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sodium_hex2bin(i8*, i32, i32, i32, i32*, i32*, i32*) #2

declare dso_local i32 @randombytes_buf(i8*, i32) #2

declare dso_local i32 @crypto_scalarmult(i8*, i8*, i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
