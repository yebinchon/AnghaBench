; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_buffalo-lib.c_encrypt_buf.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_buffalo-lib.c_encrypt_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enc_param = type { i8, i64, i64, i32, i32, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @encrypt_buf(%struct.enc_param* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.enc_param*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store %struct.enc_param* %0, %struct.enc_param** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 -1, i32* %10, align 4
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %7, align 8
  %13 = load %struct.enc_param*, %struct.enc_param** %4, align 8
  %14 = getelementptr inbounds %struct.enc_param, %struct.enc_param* %13, i32 0, i32 7
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = call i64 @strlen(i8* %16)
  %18 = add i64 %17, 1
  store i64 %18, i64* %8, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load %struct.enc_param*, %struct.enc_param** %4, align 8
  %21 = getelementptr inbounds %struct.enc_param, %struct.enc_param* %20, i32 0, i32 7
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @memcpy(i8* %19, i64 %22, i64 %23)
  %25 = load i64, i64* %8, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 %25
  store i8* %27, i8** %7, align 8
  %28 = load %struct.enc_param*, %struct.enc_param** %4, align 8
  %29 = getelementptr inbounds %struct.enc_param, %struct.enc_param* %28, i32 0, i32 0
  %30 = load i8, i8* %29, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %7, align 8
  store i8 %30, i8* %31, align 1
  %33 = load %struct.enc_param*, %struct.enc_param** %4, align 8
  %34 = getelementptr inbounds %struct.enc_param, %struct.enc_param* %33, i32 0, i32 6
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = call i64 @strlen(i8* %36)
  %38 = add i64 %37, 1
  store i64 %38, i64* %8, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @put_be32(i8* %39, i64 %40)
  %42 = load i8*, i8** %7, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 8
  store i8* %43, i8** %7, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = load %struct.enc_param*, %struct.enc_param** %4, align 8
  %46 = getelementptr inbounds %struct.enc_param, %struct.enc_param* %45, i32 0, i32 6
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @memcpy(i8* %44, i64 %47, i64 %48)
  %50 = load %struct.enc_param*, %struct.enc_param** %4, align 8
  %51 = getelementptr inbounds %struct.enc_param, %struct.enc_param* %50, i32 0, i32 0
  %52 = load i8, i8* %51, align 8
  %53 = load %struct.enc_param*, %struct.enc_param** %4, align 8
  %54 = getelementptr inbounds %struct.enc_param, %struct.enc_param* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %7, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load %struct.enc_param*, %struct.enc_param** %4, align 8
  %60 = getelementptr inbounds %struct.enc_param, %struct.enc_param* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @bcrypt_buf(i8 zeroext %52, i32 %55, i8* %56, i8* %57, i64 %58, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %3
  br label %140

66:                                               ; preds = %3
  %67 = load i8*, i8** %7, align 8
  %68 = load i8, i8* %67, align 1
  store i8 %68, i8* %11, align 1
  %69 = load i64, i64* %8, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 %69
  store i8* %71, i8** %7, align 8
  %72 = load %struct.enc_param*, %struct.enc_param** %4, align 8
  %73 = getelementptr inbounds %struct.enc_param, %struct.enc_param* %72, i32 0, i32 5
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to i8*
  %76 = call i64 @strlen(i8* %75)
  %77 = add i64 %76, 1
  store i64 %77, i64* %8, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = load i64, i64* %8, align 8
  %80 = call i32 @put_be32(i8* %78, i64 %79)
  %81 = load i8*, i8** %7, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 8
  store i8* %82, i8** %7, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = load %struct.enc_param*, %struct.enc_param** %4, align 8
  %85 = getelementptr inbounds %struct.enc_param, %struct.enc_param* %84, i32 0, i32 5
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %8, align 8
  %88 = call i32 @memcpy(i8* %83, i64 %86, i64 %87)
  %89 = load i8, i8* %11, align 1
  %90 = load %struct.enc_param*, %struct.enc_param** %4, align 8
  %91 = getelementptr inbounds %struct.enc_param, %struct.enc_param* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = load i8*, i8** %7, align 8
  %94 = load i8*, i8** %7, align 8
  %95 = load i64, i64* %8, align 8
  %96 = load %struct.enc_param*, %struct.enc_param** %4, align 8
  %97 = getelementptr inbounds %struct.enc_param, %struct.enc_param* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @bcrypt_buf(i8 zeroext %89, i32 %92, i8* %93, i8* %94, i64 %95, i32 %98)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %66
  br label %140

103:                                              ; preds = %66
  %104 = load i8*, i8** %7, align 8
  %105 = load i8, i8* %104, align 1
  store i8 %105, i8* %11, align 1
  %106 = load i64, i64* %8, align 8
  %107 = load i8*, i8** %7, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 %106
  store i8* %108, i8** %7, align 8
  %109 = load i8*, i8** %7, align 8
  %110 = load %struct.enc_param*, %struct.enc_param** %4, align 8
  %111 = getelementptr inbounds %struct.enc_param, %struct.enc_param* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @put_be32(i8* %109, i64 %112)
  %114 = load i8, i8* %11, align 1
  %115 = load %struct.enc_param*, %struct.enc_param** %4, align 8
  %116 = getelementptr inbounds %struct.enc_param, %struct.enc_param* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = load i8*, i8** %6, align 8
  %119 = load i8*, i8** %6, align 8
  %120 = load %struct.enc_param*, %struct.enc_param** %4, align 8
  %121 = getelementptr inbounds %struct.enc_param, %struct.enc_param* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.enc_param*, %struct.enc_param** %4, align 8
  %124 = getelementptr inbounds %struct.enc_param, %struct.enc_param* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @bcrypt_buf(i8 zeroext %114, i32 %117, i8* %118, i8* %119, i64 %122, i32 %125)
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %103
  br label %140

130:                                              ; preds = %103
  %131 = load i8*, i8** %6, align 8
  %132 = load %struct.enc_param*, %struct.enc_param** %4, align 8
  %133 = getelementptr inbounds %struct.enc_param, %struct.enc_param* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds i8, i8* %131, i64 %134
  %136 = load %struct.enc_param*, %struct.enc_param** %4, align 8
  %137 = getelementptr inbounds %struct.enc_param, %struct.enc_param* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @put_be32(i8* %135, i64 %138)
  store i32 0, i32* %10, align 4
  br label %140

140:                                              ; preds = %130, %129, %102, %65
  %141 = load i32, i32* %10, align 4
  ret i32 %141
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

declare dso_local i32 @put_be32(i8*, i64) #1

declare dso_local i32 @bcrypt_buf(i8 zeroext, i32, i8*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
