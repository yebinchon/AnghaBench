; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/extra_vecs/extr_openssl-hash.c_main.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/extra_vecs/extr_openssl-hash.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"SHA1\00", align 1
@MAX_LENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"SHA224\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"SHA256\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"SHA384\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"SHA512\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 (...) @EVP_sha1()
  %3 = load i32, i32* @MAX_LENGTH, align 4
  %4 = call i32 @emit_length_test(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %2, i32 %3)
  %5 = call i32 (...) @EVP_sha224()
  %6 = load i32, i32* @MAX_LENGTH, align 4
  %7 = call i32 @emit_length_test(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %5, i32 %6)
  %8 = call i32 (...) @EVP_sha256()
  %9 = load i32, i32* @MAX_LENGTH, align 4
  %10 = call i32 @emit_length_test(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %8, i32 %9)
  %11 = call i32 (...) @EVP_sha384()
  %12 = load i32, i32* @MAX_LENGTH, align 4
  %13 = call i32 @emit_length_test(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %11, i32 %12)
  %14 = call i32 (...) @EVP_sha512()
  %15 = load i32, i32* @MAX_LENGTH, align 4
  %16 = call i32 @emit_length_test(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %14, i32 %15)
  ret i32 0
}

declare dso_local i32 @emit_length_test(i8*, i32, i32) #1

declare dso_local i32 @EVP_sha1(...) #1

declare dso_local i32 @EVP_sha224(...) #1

declare dso_local i32 @EVP_sha256(...) #1

declare dso_local i32 @EVP_sha384(...) #1

declare dso_local i32 @EVP_sha512(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
