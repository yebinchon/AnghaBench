; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/contrib/extr_lax_der_privatekey_parsing.c_ec_privkey_import_der.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/contrib/extr_lax_der_privatekey_parsing.c_ec_privkey_import_der.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ec_privkey_import_der(i32* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load i64, i64* %9, align 8
  %15 = getelementptr inbounds i8, i8* %13, i64 %14
  store i8* %15, i8** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @memset(i8* %16, i32 0, i32 32)
  %18 = load i8*, i8** %10, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = icmp ult i8* %18, %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %4
  %23 = load i8*, i8** %8, align 8
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp ne i32 %25, 48
  br i1 %26, label %27, label %28

27:                                               ; preds = %22, %4
  store i32 0, i32* %5, align 4
  br label %176

28:                                               ; preds = %22
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %8, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = icmp ult i8* %31, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %28
  %36 = load i8*, i8** %8, align 8
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = and i32 %38, 128
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %35, %28
  store i32 0, i32* %5, align 4
  br label %176

42:                                               ; preds = %35
  %43 = load i8*, i8** %8, align 8
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = and i32 %45, -129
  store i32 %46, i32* %11, align 4
  %47 = load i8*, i8** %8, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %8, align 8
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %49, 1
  br i1 %50, label %54, label %51

51:                                               ; preds = %42
  %52 = load i32, i32* %11, align 4
  %53 = icmp sgt i32 %52, 2
  br i1 %53, label %54, label %55

54:                                               ; preds = %51, %42
  store i32 0, i32* %5, align 4
  br label %176

55:                                               ; preds = %51
  %56 = load i8*, i8** %10, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = icmp ult i8* %56, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  br label %176

63:                                               ; preds = %55
  %64 = load i8*, i8** %8, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %64, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = load i32, i32* %11, align 4
  %72 = icmp sgt i32 %71, 1
  br i1 %72, label %73, label %82

73:                                               ; preds = %63
  %74 = load i8*, i8** %8, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sub nsw i32 %75, 2
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %74, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = shl i32 %80, 8
  br label %83

82:                                               ; preds = %63
  br label %83

83:                                               ; preds = %82, %73
  %84 = phi i32 [ %81, %73 ], [ 0, %82 ]
  %85 = or i32 %70, %84
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load i8*, i8** %8, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  store i8* %89, i8** %8, align 8
  %90 = load i8*, i8** %10, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = icmp ult i8* %90, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %83
  store i32 0, i32* %5, align 4
  br label %176

97:                                               ; preds = %83
  %98 = load i8*, i8** %10, align 8
  %99 = load i8*, i8** %8, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 3
  %101 = icmp ult i8* %98, %100
  br i1 %101, label %120, label %102

102:                                              ; preds = %97
  %103 = load i8*, i8** %8, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 0
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i32
  %107 = icmp ne i32 %106, 2
  br i1 %107, label %120, label %108

108:                                              ; preds = %102
  %109 = load i8*, i8** %8, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 1
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = icmp ne i32 %112, 1
  br i1 %113, label %120, label %114

114:                                              ; preds = %108
  %115 = load i8*, i8** %8, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 2
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = icmp ne i32 %118, 1
  br i1 %119, label %120, label %121

120:                                              ; preds = %114, %108, %102, %97
  store i32 0, i32* %5, align 4
  br label %176

121:                                              ; preds = %114
  %122 = load i8*, i8** %8, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 3
  store i8* %123, i8** %8, align 8
  %124 = load i8*, i8** %10, align 8
  %125 = load i8*, i8** %8, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 2
  %127 = icmp ult i8* %124, %126
  br i1 %127, label %151, label %128

128:                                              ; preds = %121
  %129 = load i8*, i8** %8, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 0
  %131 = load i8, i8* %130, align 1
  %132 = zext i8 %131 to i32
  %133 = icmp ne i32 %132, 4
  br i1 %133, label %151, label %134

134:                                              ; preds = %128
  %135 = load i8*, i8** %8, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 1
  %137 = load i8, i8* %136, align 1
  %138 = zext i8 %137 to i32
  %139 = icmp sgt i32 %138, 32
  br i1 %139, label %151, label %140

140:                                              ; preds = %134
  %141 = load i8*, i8** %10, align 8
  %142 = load i8*, i8** %8, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 2
  %144 = load i8*, i8** %8, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 1
  %146 = load i8, i8* %145, align 1
  %147 = zext i8 %146 to i32
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %143, i64 %148
  %150 = icmp ult i8* %141, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %140, %134, %128, %121
  store i32 0, i32* %5, align 4
  br label %176

152:                                              ; preds = %140
  %153 = load i8*, i8** %7, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 32
  %155 = load i8*, i8** %8, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 1
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i32
  %159 = sext i32 %158 to i64
  %160 = sub i64 0, %159
  %161 = getelementptr inbounds i8, i8* %154, i64 %160
  %162 = load i8*, i8** %8, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 2
  %164 = load i8*, i8** %8, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 1
  %166 = load i8, i8* %165, align 1
  %167 = call i32 @memcpy(i8* %161, i8* %163, i8 zeroext %166)
  %168 = load i32*, i32** %6, align 8
  %169 = load i8*, i8** %7, align 8
  %170 = call i32 @secp256k1_ec_seckey_verify(i32* %168, i8* %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %152
  %173 = load i8*, i8** %7, align 8
  %174 = call i32 @memset(i8* %173, i32 0, i32 32)
  store i32 0, i32* %5, align 4
  br label %176

175:                                              ; preds = %152
  store i32 1, i32* %5, align 4
  br label %176

176:                                              ; preds = %175, %172, %151, %120, %96, %62, %54, %41, %27
  %177 = load i32, i32* %5, align 4
  ret i32 %177
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i8 zeroext) #1

declare dso_local i32 @secp256k1_ec_seckey_verify(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
