; ModuleID = '/home/carl/AnghaBench/libsodium/test/default/extr_generichash.c_xmain.c'
source_filename = "/home/carl/AnghaBench/libsodium/test/default/extr_generichash.c_xmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXLEN = common dso_local global i32 0, align 4
@crypto_generichash_BYTES_MAX = common dso_local global i32 0, align 4
@crypto_generichash_KEYBYTES_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@guard_page = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"blake2b\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %9 = load i32, i32* @MAXLEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %2, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %3, align 8
  %13 = load i32, i32* @crypto_generichash_BYTES_MAX, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %4, align 8
  %16 = load i32, i32* @crypto_generichash_KEYBYTES_MAX, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %5, align 8
  %19 = call i32 (...) @tv()
  store i64 0, i64* %6, align 8
  br label %20

20:                                               ; preds = %30, %0
  %21 = load i64, i64* %6, align 8
  %22 = load i32, i32* @crypto_generichash_KEYBYTES_MAX, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ult i64 %21, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load i64, i64* %6, align 8
  %27 = trunc i64 %26 to i8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds i8, i8* %18, i64 %28
  store i8 %27, i8* %29, align 1
  br label %30

30:                                               ; preds = %25
  %31 = load i64, i64* %6, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %6, align 8
  br label %20

33:                                               ; preds = %20
  store i64 0, i64* %7, align 8
  br label %34

34:                                               ; preds = %76, %33
  %35 = load i64, i64* %7, align 8
  %36 = load i32, i32* @MAXLEN, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp ult i64 %35, %37
  br i1 %38, label %39, label %79

39:                                               ; preds = %34
  %40 = load i64, i64* %7, align 8
  %41 = trunc i64 %40 to i8
  %42 = load i64, i64* %7, align 8
  %43 = getelementptr inbounds i8, i8* %12, i64 %42
  store i8 %41, i8* %43, align 1
  %44 = load i64, i64* %7, align 8
  %45 = load i32, i32* @crypto_generichash_BYTES_MAX, align 4
  %46 = sext i32 %45 to i64
  %47 = urem i64 %44, %46
  %48 = add i64 1, %47
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i32, i32* @crypto_generichash_KEYBYTES_MAX, align 4
  %52 = sext i32 %51 to i64
  %53 = urem i64 %50, %52
  %54 = add i64 1, %53
  %55 = trunc i64 %54 to i32
  %56 = call i32 @crypto_generichash(i8* %15, i64 %48, i8* %12, i64 %49, i8* %18, i32 %55)
  store i64 0, i64* %8, align 8
  br label %57

57:                                               ; preds = %71, %39
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load i32, i32* @crypto_generichash_BYTES_MAX, align 4
  %61 = sext i32 %60 to i64
  %62 = urem i64 %59, %61
  %63 = add i64 1, %62
  %64 = icmp ult i64 %58, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %57
  %66 = load i64, i64* %8, align 8
  %67 = getelementptr inbounds i8, i8* %15, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %65
  %72 = load i64, i64* %8, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %8, align 8
  br label %57

74:                                               ; preds = %57
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74
  %77 = load i64, i64* %7, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %7, align 8
  br label %34

79:                                               ; preds = %34
  %80 = trunc i64 %14 to i32
  %81 = call i32 @memset(i8* %15, i32 0, i32 %80)
  %82 = load i32, i32* @crypto_generichash_BYTES_MAX, align 4
  %83 = sext i32 %82 to i64
  %84 = load i64, i64* %7, align 8
  %85 = call i32 @crypto_generichash(i8* %15, i64 %83, i8* %12, i64 %84, i8* %18, i32 0)
  store i64 0, i64* %8, align 8
  br label %86

86:                                               ; preds = %97, %79
  %87 = load i64, i64* %8, align 8
  %88 = load i32, i32* @crypto_generichash_BYTES_MAX, align 4
  %89 = sext i32 %88 to i64
  %90 = icmp ult i64 %87, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %86
  %92 = load i64, i64* %8, align 8
  %93 = getelementptr inbounds i8, i8* %15, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %91
  %98 = load i64, i64* %8, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %8, align 8
  br label %86

100:                                              ; preds = %86
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %102 = load i8*, i8** @guard_page, align 8
  %103 = trunc i64 %17 to i32
  %104 = call i32 @crypto_generichash(i8* %102, i64 0, i8* %12, i64 %10, i8* %18, i32 %103)
  %105 = icmp eq i32 %104, -1
  %106 = zext i1 %105 to i32
  %107 = call i32 @assert(i32 %106)
  %108 = load i8*, i8** @guard_page, align 8
  %109 = load i32, i32* @crypto_generichash_BYTES_MAX, align 4
  %110 = add nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = trunc i64 %17 to i32
  %113 = call i32 @crypto_generichash(i8* %108, i64 %111, i8* %12, i64 %10, i8* %18, i32 %112)
  %114 = icmp eq i32 %113, -1
  %115 = zext i1 %114 to i32
  %116 = call i32 @assert(i32 %115)
  %117 = load i8*, i8** @guard_page, align 8
  %118 = load i32, i32* @crypto_generichash_KEYBYTES_MAX, align 4
  %119 = add nsw i32 %118, 1
  %120 = call i32 @crypto_generichash(i8* %117, i64 %10, i8* %12, i64 %10, i8* %18, i32 %119)
  %121 = icmp eq i32 %120, -1
  %122 = zext i1 %121 to i32
  %123 = call i32 @assert(i32 %122)
  %124 = call i32 (...) @crypto_generichash_bytes_min()
  %125 = icmp ugt i32 %124, 0
  %126 = zext i1 %125 to i32
  %127 = call i32 @assert(i32 %126)
  %128 = call i32 (...) @crypto_generichash_bytes_max()
  %129 = icmp ugt i32 %128, 0
  %130 = zext i1 %129 to i32
  %131 = call i32 @assert(i32 %130)
  %132 = call i32 (...) @crypto_generichash_bytes()
  %133 = icmp ugt i32 %132, 0
  %134 = zext i1 %133 to i32
  %135 = call i32 @assert(i32 %134)
  %136 = call i32 (...) @crypto_generichash_bytes()
  %137 = call i32 (...) @crypto_generichash_bytes_min()
  %138 = icmp uge i32 %136, %137
  %139 = zext i1 %138 to i32
  %140 = call i32 @assert(i32 %139)
  %141 = call i32 (...) @crypto_generichash_bytes()
  %142 = call i32 (...) @crypto_generichash_bytes_max()
  %143 = icmp ule i32 %141, %142
  %144 = zext i1 %143 to i32
  %145 = call i32 @assert(i32 %144)
  %146 = call i32 (...) @crypto_generichash_keybytes_min()
  %147 = icmp ugt i32 %146, 0
  %148 = zext i1 %147 to i32
  %149 = call i32 @assert(i32 %148)
  %150 = call i32 (...) @crypto_generichash_keybytes_max()
  %151 = icmp ugt i32 %150, 0
  %152 = zext i1 %151 to i32
  %153 = call i32 @assert(i32 %152)
  %154 = call i32 (...) @crypto_generichash_keybytes()
  %155 = icmp ugt i32 %154, 0
  %156 = zext i1 %155 to i32
  %157 = call i32 @assert(i32 %156)
  %158 = call i32 (...) @crypto_generichash_keybytes()
  %159 = call i32 (...) @crypto_generichash_keybytes_min()
  %160 = icmp uge i32 %158, %159
  %161 = zext i1 %160 to i32
  %162 = call i32 @assert(i32 %161)
  %163 = call i32 (...) @crypto_generichash_keybytes()
  %164 = call i32 (...) @crypto_generichash_keybytes_max()
  %165 = icmp ule i32 %163, %164
  %166 = zext i1 %165 to i32
  %167 = call i32 @assert(i32 %166)
  %168 = call i32 (...) @crypto_generichash_primitive()
  %169 = call i64 @strcmp(i32 %168, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %170 = icmp eq i64 %169, 0
  %171 = zext i1 %170 to i32
  %172 = call i32 @assert(i32 %171)
  %173 = call i32 (...) @crypto_generichash_bytes_min()
  %174 = call i32 (...) @crypto_generichash_blake2b_bytes_min()
  %175 = icmp eq i32 %173, %174
  %176 = zext i1 %175 to i32
  %177 = call i32 @assert(i32 %176)
  %178 = call i32 (...) @crypto_generichash_bytes_max()
  %179 = call i32 (...) @crypto_generichash_blake2b_bytes_max()
  %180 = icmp eq i32 %178, %179
  %181 = zext i1 %180 to i32
  %182 = call i32 @assert(i32 %181)
  %183 = call i32 (...) @crypto_generichash_bytes()
  %184 = call i32 (...) @crypto_generichash_blake2b_bytes()
  %185 = icmp eq i32 %183, %184
  %186 = zext i1 %185 to i32
  %187 = call i32 @assert(i32 %186)
  %188 = call i32 (...) @crypto_generichash_keybytes_min()
  %189 = call i32 (...) @crypto_generichash_blake2b_keybytes_min()
  %190 = icmp eq i32 %188, %189
  %191 = zext i1 %190 to i32
  %192 = call i32 @assert(i32 %191)
  %193 = call i32 (...) @crypto_generichash_keybytes_max()
  %194 = call i32 (...) @crypto_generichash_blake2b_keybytes_max()
  %195 = icmp eq i32 %193, %194
  %196 = zext i1 %195 to i32
  %197 = call i32 @assert(i32 %196)
  %198 = call i32 (...) @crypto_generichash_keybytes()
  %199 = call i32 (...) @crypto_generichash_blake2b_keybytes()
  %200 = icmp eq i32 %198, %199
  %201 = zext i1 %200 to i32
  %202 = call i32 @assert(i32 %201)
  %203 = call i32 (...) @crypto_generichash_blake2b_saltbytes()
  %204 = icmp ugt i32 %203, 0
  %205 = zext i1 %204 to i32
  %206 = call i32 @assert(i32 %205)
  %207 = call i32 (...) @crypto_generichash_blake2b_personalbytes()
  %208 = icmp ugt i32 %207, 0
  %209 = zext i1 %208 to i32
  %210 = call i32 @assert(i32 %209)
  store i32 0, i32* %1, align 4
  %211 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %211)
  %212 = load i32, i32* %1, align 4
  ret i32 %212
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @tv(...) #2

declare dso_local i32 @crypto_generichash(i8*, i64, i8*, i64, i8*, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @crypto_generichash_bytes_min(...) #2

declare dso_local i32 @crypto_generichash_bytes_max(...) #2

declare dso_local i32 @crypto_generichash_bytes(...) #2

declare dso_local i32 @crypto_generichash_keybytes_min(...) #2

declare dso_local i32 @crypto_generichash_keybytes_max(...) #2

declare dso_local i32 @crypto_generichash_keybytes(...) #2

declare dso_local i64 @strcmp(i32, i8*) #2

declare dso_local i32 @crypto_generichash_primitive(...) #2

declare dso_local i32 @crypto_generichash_blake2b_bytes_min(...) #2

declare dso_local i32 @crypto_generichash_blake2b_bytes_max(...) #2

declare dso_local i32 @crypto_generichash_blake2b_bytes(...) #2

declare dso_local i32 @crypto_generichash_blake2b_keybytes_min(...) #2

declare dso_local i32 @crypto_generichash_blake2b_keybytes_max(...) #2

declare dso_local i32 @crypto_generichash_blake2b_keybytes(...) #2

declare dso_local i32 @crypto_generichash_blake2b_saltbytes(...) #2

declare dso_local i32 @crypto_generichash_blake2b_personalbytes(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
