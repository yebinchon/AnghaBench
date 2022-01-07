; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_asym_tpm.c_extract_key_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_asym_tpm.c_extract_key_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_key = type { i8*, i32, i32, i32, i8* }

@EBADMSG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_key*)* @extract_key_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extract_key_parameters(%struct.tpm_key* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tpm_key*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tpm_key* %0, %struct.tpm_key** %3, align 8
  %9 = load %struct.tpm_key*, %struct.tpm_key** %3, align 8
  %10 = getelementptr inbounds %struct.tpm_key, %struct.tpm_key* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %4, align 8
  %12 = load %struct.tpm_key*, %struct.tpm_key** %3, align 8
  %13 = getelementptr inbounds %struct.tpm_key, %struct.tpm_key* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 11
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @EBADMSG, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %136

20:                                               ; preds = %1
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr i8, i8* %21, i64 4
  %23 = call i32 @get_unaligned_be16(i8* %22)
  %24 = icmp ne i32 %23, 21
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @EBADMSG, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %136

28:                                               ; preds = %20
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr i8, i8* %29, i64 11
  store i8* %30, i8** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sub nsw i32 %31, 11
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 12
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* @EBADMSG, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %136

38:                                               ; preds = %28
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @get_unaligned_be32(i8* %39)
  %41 = icmp ne i32 %40, 1
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @EBADMSG, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %136

45:                                               ; preds = %38
  %46 = load i8*, i8** %4, align 8
  %47 = getelementptr i8, i8* %46, i64 4
  %48 = call i32 @get_unaligned_be16(i8* %47)
  %49 = icmp ne i32 %48, 2
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* @EBADMSG, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %136

53:                                               ; preds = %45
  %54 = load i8*, i8** %4, align 8
  %55 = getelementptr i8, i8* %54, i64 6
  %56 = call i32 @get_unaligned_be16(i8* %55)
  %57 = icmp ne i32 %56, 3
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* @EBADMSG, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %136

61:                                               ; preds = %53
  %62 = load i8*, i8** %4, align 8
  %63 = getelementptr i8, i8* %62, i64 8
  %64 = call i32 @get_unaligned_be32(i8* %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 12
  %68 = icmp slt i32 %65, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = load i32, i32* @EBADMSG, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %136

72:                                               ; preds = %61
  %73 = load i32, i32* %5, align 4
  %74 = sub nsw i32 %73, 12
  store i32 %74, i32* %5, align 4
  %75 = load i8*, i8** %4, align 8
  %76 = getelementptr i8, i8* %75, i64 12
  store i8* %76, i8** %4, align 8
  %77 = load i8*, i8** %4, align 8
  %78 = call i32 @get_unaligned_be32(i8* %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  switch i32 %79, label %81 [
    i32 512, label %80
    i32 1024, label %80
    i32 1536, label %80
    i32 2048, label %80
  ]

80:                                               ; preds = %72, %72, %72, %72
  br label %84

81:                                               ; preds = %72
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %136

84:                                               ; preds = %80
  %85 = load i32, i32* %7, align 4
  %86 = load i8*, i8** %4, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr i8, i8* %86, i64 %87
  store i8* %88, i8** %4, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %5, align 4
  %91 = sub nsw i32 %90, %89
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %5, align 4
  %93 = icmp slt i32 %92, 4
  br i1 %93, label %94, label %97

94:                                               ; preds = %84
  %95 = load i32, i32* @EBADMSG, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %2, align 4
  br label %136

97:                                               ; preds = %84
  %98 = load i8*, i8** %4, align 8
  %99 = call i32 @get_unaligned_be32(i8* %98)
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 4, %101
  %103 = icmp slt i32 %100, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %97
  %105 = load i32, i32* @EBADMSG, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %2, align 4
  br label %136

107:                                              ; preds = %97
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 4, %108
  %110 = load i8*, i8** %4, align 8
  %111 = sext i32 %109 to i64
  %112 = getelementptr i8, i8* %110, i64 %111
  store i8* %112, i8** %4, align 8
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 4, %113
  %115 = load i32, i32* %5, align 4
  %116 = sub nsw i32 %115, %114
  store i32 %116, i32* %5, align 4
  %117 = load i8*, i8** %4, align 8
  %118 = call i32 @get_unaligned_be32(i8* %117)
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %7, align 4
  %120 = icmp sgt i32 %119, 256
  br i1 %120, label %121, label %124

121:                                              ; preds = %107
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %2, align 4
  br label %136

124:                                              ; preds = %107
  %125 = load i8*, i8** %4, align 8
  %126 = getelementptr i8, i8* %125, i64 4
  store i8* %126, i8** %6, align 8
  %127 = load i32, i32* %8, align 4
  %128 = load %struct.tpm_key*, %struct.tpm_key** %3, align 8
  %129 = getelementptr inbounds %struct.tpm_key, %struct.tpm_key* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 4
  %130 = load i8*, i8** %6, align 8
  %131 = load %struct.tpm_key*, %struct.tpm_key** %3, align 8
  %132 = getelementptr inbounds %struct.tpm_key, %struct.tpm_key* %131, i32 0, i32 4
  store i8* %130, i8** %132, align 8
  %133 = load i32, i32* %7, align 4
  %134 = load %struct.tpm_key*, %struct.tpm_key** %3, align 8
  %135 = getelementptr inbounds %struct.tpm_key, %struct.tpm_key* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 8
  store i32 0, i32* %2, align 4
  br label %136

136:                                              ; preds = %124, %121, %104, %94, %81, %69, %58, %50, %42, %35, %25, %17
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local i32 @get_unaligned_be16(i8*) #1

declare dso_local i32 @get_unaligned_be32(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
