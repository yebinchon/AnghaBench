; ModuleID = '/home/carl/AnghaBench/libsodium/test/default/extr_hash.c_xmain.c'
source_filename = "/home/carl/AnghaBench/libsodium/test/default/extr_hash.c_xmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@h = common dso_local global i64* null, align 8
@x = common dso_local global i32 0, align 4
@crypto_hash_BYTES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@x2 = common dso_local global i32 0, align 4
@crypto_hash_sha256_BYTES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"sha512\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %3 = load i64*, i64** @h, align 8
  %4 = load i32, i32* @x, align 4
  %5 = call i32 @crypto_hash(i64* %3, i32 %4, i32 3)
  store i64 0, i64* %2, align 8
  br label %6

6:                                                ; preds = %17, %0
  %7 = load i64, i64* %2, align 8
  %8 = load i64, i64* @crypto_hash_BYTES, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %6
  %11 = load i64*, i64** @h, align 8
  %12 = load i64, i64* %2, align 8
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %10
  %18 = load i64, i64* %2, align 8
  %19 = add i64 %18, 1
  store i64 %19, i64* %2, align 8
  br label %6

20:                                               ; preds = %6
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i64*, i64** @h, align 8
  %23 = load i32, i32* @x2, align 4
  %24 = call i32 @crypto_hash(i64* %22, i32 %23, i32 3)
  store i64 0, i64* %2, align 8
  br label %25

25:                                               ; preds = %36, %20
  %26 = load i64, i64* %2, align 8
  %27 = load i64, i64* @crypto_hash_BYTES, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %25
  %30 = load i64*, i64** @h, align 8
  %31 = load i64, i64* %2, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %29
  %37 = load i64, i64* %2, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %2, align 8
  br label %25

39:                                               ; preds = %25
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i64*, i64** @h, align 8
  %42 = load i32, i32* @x, align 4
  %43 = call i32 @crypto_hash_sha256(i64* %41, i32 %42, i32 3)
  store i64 0, i64* %2, align 8
  br label %44

44:                                               ; preds = %55, %39
  %45 = load i64, i64* %2, align 8
  %46 = load i64, i64* @crypto_hash_sha256_BYTES, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %44
  %49 = load i64*, i64** @h, align 8
  %50 = load i64, i64* %2, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %48
  %56 = load i64, i64* %2, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %2, align 8
  br label %44

58:                                               ; preds = %44
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i64*, i64** @h, align 8
  %61 = load i32, i32* @x2, align 4
  %62 = call i32 @crypto_hash_sha256(i64* %60, i32 %61, i32 3)
  store i64 0, i64* %2, align 8
  br label %63

63:                                               ; preds = %74, %58
  %64 = load i64, i64* %2, align 8
  %65 = load i64, i64* @crypto_hash_sha256_BYTES, align 8
  %66 = icmp ult i64 %64, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %63
  %68 = load i64*, i64** @h, align 8
  %69 = load i64, i64* %2, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %67
  %75 = load i64, i64* %2, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %2, align 8
  br label %63

77:                                               ; preds = %63
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %79 = call i32 (...) @crypto_hash_bytes()
  %80 = icmp ugt i32 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  %83 = call i32 (...) @crypto_hash_primitive()
  %84 = call i64 @strcmp(i32 %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %85 = icmp eq i64 %84, 0
  %86 = zext i1 %85 to i32
  %87 = call i32 @assert(i32 %86)
  %88 = call i32 (...) @crypto_hash_sha256_bytes()
  %89 = icmp ugt i32 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert(i32 %90)
  %92 = call i32 (...) @crypto_hash_sha512_bytes()
  %93 = call i32 (...) @crypto_hash_sha256_bytes()
  %94 = icmp uge i32 %92, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 @assert(i32 %95)
  %97 = call i32 (...) @crypto_hash_sha512_bytes()
  %98 = call i32 (...) @crypto_hash_bytes()
  %99 = icmp eq i32 %97, %98
  %100 = zext i1 %99 to i32
  %101 = call i32 @assert(i32 %100)
  %102 = call i32 (...) @crypto_hash_sha256_statebytes()
  %103 = sext i32 %102 to i64
  %104 = icmp eq i64 %103, 4
  %105 = zext i1 %104 to i32
  %106 = call i32 @assert(i32 %105)
  %107 = call i32 (...) @crypto_hash_sha512_statebytes()
  %108 = sext i32 %107 to i64
  %109 = icmp eq i64 %108, 4
  %110 = zext i1 %109 to i32
  %111 = call i32 @assert(i32 %110)
  ret i32 0
}

declare dso_local i32 @crypto_hash(i64*, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @crypto_hash_sha256(i64*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @crypto_hash_bytes(...) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @crypto_hash_primitive(...) #1

declare dso_local i32 @crypto_hash_sha256_bytes(...) #1

declare dso_local i32 @crypto_hash_sha512_bytes(...) #1

declare dso_local i32 @crypto_hash_sha256_statebytes(...) #1

declare dso_local i32 @crypto_hash_sha512_statebytes(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
