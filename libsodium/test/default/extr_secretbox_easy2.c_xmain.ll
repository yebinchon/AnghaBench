; ModuleID = '/home/carl/AnghaBench/libsodium/test/default/extr_secretbox_easy2.c_xmain.c'
source_filename = "/home/carl/AnghaBench/libsodium/test/default/extr_secretbox_easy2.c_xmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_secretbox_MACBYTES = common dso_local global i64 0, align 8
@crypto_secretbox_NONCEBYTES = common dso_local global i64 0, align 8
@crypto_secretbox_KEYBYTES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"crypto_secretbox_open_easy() failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"short open() should have failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [69 x i8] c"crypto_secretbox_open_detached() with a NULL message pointer failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"crypto_secretbox_open_detached() failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %10 = call i64 @randombytes_uniform(i32 10000)
  %11 = add i64 %10, 1
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = call i64 @sodium_malloc(i64 %12)
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %2, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call i64 @sodium_malloc(i64 %15)
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** %3, align 8
  %18 = load i64, i64* @crypto_secretbox_MACBYTES, align 8
  %19 = load i64, i64* %8, align 8
  %20 = add i64 %18, %19
  %21 = call i64 @sodium_malloc(i64 %20)
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** %4, align 8
  %23 = load i64, i64* @crypto_secretbox_NONCEBYTES, align 8
  %24 = call i64 @sodium_malloc(i64 %23)
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %5, align 8
  %26 = load i64, i64* @crypto_secretbox_KEYBYTES, align 8
  %27 = call i64 @sodium_malloc(i64 %26)
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** %6, align 8
  %29 = load i64, i64* @crypto_secretbox_MACBYTES, align 8
  %30 = call i64 @sodium_malloc(i64 %29)
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** %7, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @crypto_secretbox_keygen(i8* %32)
  %34 = load i8*, i8** %2, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @randombytes_buf(i8* %34, i64 %35)
  %37 = load i8*, i8** %5, align 8
  %38 = load i64, i64* @crypto_secretbox_NONCEBYTES, align 8
  %39 = call i32 @randombytes_buf(i8* %37, i64 %38)
  %40 = load i8*, i8** %4, align 8
  %41 = load i8*, i8** %2, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @crypto_secretbox_easy(i8* %40, i8* %41, i64 %42, i8* %43, i8* %44)
  %46 = load i8*, i8** %3, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* @crypto_secretbox_MACBYTES, align 8
  %50 = add i64 %48, %49
  %51 = load i8*, i8** %5, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = call i64 @crypto_secretbox_open_easy(i8* %46, i8* %47, i64 %50, i8* %51, i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %0
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %0
  %58 = load i8*, i8** %2, align 8
  %59 = load i8*, i8** %3, align 8
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @memcmp(i8* %58, i8* %59, i64 %60)
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  store i64 0, i64* %9, align 8
  br label %63

63:                                               ; preds = %81, %57
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* @crypto_secretbox_MACBYTES, align 8
  %67 = add i64 %65, %66
  %68 = sub i64 %67, 1
  %69 = icmp ult i64 %64, %68
  br i1 %69, label %70, label %84

70:                                               ; preds = %63
  %71 = load i8*, i8** %3, align 8
  %72 = load i8*, i8** %4, align 8
  %73 = load i64, i64* %9, align 8
  %74 = load i8*, i8** %5, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = call i64 @crypto_secretbox_open_easy(i8* %71, i8* %72, i64 %73, i8* %74, i8* %75)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %70
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %173

80:                                               ; preds = %70
  br label %81

81:                                               ; preds = %80
  %82 = load i64, i64* %9, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %9, align 8
  br label %63

84:                                               ; preds = %63
  %85 = load i8*, i8** %4, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = load i8*, i8** %2, align 8
  %88 = load i64, i64* %8, align 8
  %89 = load i8*, i8** %5, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 @crypto_secretbox_detached(i8* %85, i8* %86, i8* %87, i64 %88, i8* %89, i8* %90)
  %92 = load i8*, i8** %4, align 8
  %93 = load i8*, i8** %7, align 8
  %94 = load i64, i64* %8, align 8
  %95 = load i8*, i8** %5, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = call i64 @crypto_secretbox_open_detached(i8* null, i8* %92, i8* %93, i64 %94, i8* %95, i8* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %84
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %84
  %102 = load i8*, i8** %3, align 8
  %103 = load i8*, i8** %4, align 8
  %104 = load i8*, i8** %7, align 8
  %105 = load i64, i64* %8, align 8
  %106 = load i8*, i8** %5, align 8
  %107 = load i8*, i8** %6, align 8
  %108 = call i64 @crypto_secretbox_open_detached(i8* %102, i8* %103, i8* %104, i64 %105, i8* %106, i8* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %101
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %112

112:                                              ; preds = %110, %101
  %113 = load i8*, i8** %2, align 8
  %114 = load i8*, i8** %3, align 8
  %115 = load i64, i64* %8, align 8
  %116 = call i32 @memcmp(i8* %113, i8* %114, i64 %115)
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  %118 = load i8*, i8** %4, align 8
  %119 = load i8*, i8** %2, align 8
  %120 = load i64, i64* %8, align 8
  %121 = call i32 @memcpy(i8* %118, i8* %119, i64 %120)
  %122 = load i8*, i8** %4, align 8
  %123 = load i8*, i8** %4, align 8
  %124 = load i64, i64* %8, align 8
  %125 = load i8*, i8** %5, align 8
  %126 = load i8*, i8** %6, align 8
  %127 = call i32 @crypto_secretbox_easy(i8* %122, i8* %123, i64 %124, i8* %125, i8* %126)
  %128 = load i8*, i8** %2, align 8
  %129 = load i8*, i8** %4, align 8
  %130 = load i64, i64* %8, align 8
  %131 = call i32 @memcmp(i8* %128, i8* %129, i64 %130)
  %132 = icmp eq i32 %131, 0
  %133 = zext i1 %132 to i32
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %133)
  %135 = load i8*, i8** %2, align 8
  %136 = load i8*, i8** %4, align 8
  %137 = load i64, i64* @crypto_secretbox_MACBYTES, align 8
  %138 = getelementptr inbounds i8, i8* %136, i64 %137
  %139 = load i64, i64* %8, align 8
  %140 = call i32 @memcmp(i8* %135, i8* %138, i64 %139)
  %141 = icmp eq i32 %140, 0
  %142 = zext i1 %141 to i32
  %143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %142)
  %144 = load i8*, i8** %4, align 8
  %145 = load i8*, i8** %4, align 8
  %146 = load i64, i64* %8, align 8
  %147 = load i64, i64* @crypto_secretbox_MACBYTES, align 8
  %148 = add i64 %146, %147
  %149 = load i8*, i8** %5, align 8
  %150 = load i8*, i8** %6, align 8
  %151 = call i64 @crypto_secretbox_open_easy(i8* %144, i8* %145, i64 %148, i8* %149, i8* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %112
  %154 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %155

155:                                              ; preds = %153, %112
  %156 = load i8*, i8** %2, align 8
  %157 = load i8*, i8** %4, align 8
  %158 = load i64, i64* %8, align 8
  %159 = call i32 @memcmp(i8* %156, i8* %157, i64 %158)
  %160 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %159)
  %161 = load i8*, i8** %2, align 8
  %162 = call i32 @sodium_free(i8* %161)
  %163 = load i8*, i8** %3, align 8
  %164 = call i32 @sodium_free(i8* %163)
  %165 = load i8*, i8** %4, align 8
  %166 = call i32 @sodium_free(i8* %165)
  %167 = load i8*, i8** %5, align 8
  %168 = call i32 @sodium_free(i8* %167)
  %169 = load i8*, i8** %6, align 8
  %170 = call i32 @sodium_free(i8* %169)
  %171 = load i8*, i8** %7, align 8
  %172 = call i32 @sodium_free(i8* %171)
  store i32 0, i32* %1, align 4
  br label %173

173:                                              ; preds = %155, %78
  %174 = load i32, i32* %1, align 4
  ret i32 %174
}

declare dso_local i64 @randombytes_uniform(i32) #1

declare dso_local i64 @sodium_malloc(i64) #1

declare dso_local i32 @crypto_secretbox_keygen(i8*) #1

declare dso_local i32 @randombytes_buf(i8*, i64) #1

declare dso_local i32 @crypto_secretbox_easy(i8*, i8*, i64, i8*, i8*) #1

declare dso_local i64 @crypto_secretbox_open_easy(i8*, i8*, i64, i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @crypto_secretbox_detached(i8*, i8*, i8*, i64, i8*, i8*) #1

declare dso_local i64 @crypto_secretbox_open_detached(i8*, i8*, i8*, i64, i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @sodium_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
