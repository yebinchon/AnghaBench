; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_crypto_user_base.c_crypto_report_one.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_crypto_user_base.c_crypto_report_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_alg = type { i8*, i8*, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 (%struct.sk_buff*, %struct.crypto_alg*)* }
%struct.crypto_user_alg = type { i32, i32, i32, i64, i64, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.crypto_report_larval = type { i32, i32, i32, i64, i64, i32, i32, i32 }

@CRYPTOCFGA_PRIORITY_VAL = common dso_local global i32 0, align 4
@CRYPTO_ALG_LARVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"larval\00", align 1
@CRYPTOCFGA_REPORT_LARVAL = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_MASK = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_alg*, %struct.crypto_user_alg*, %struct.sk_buff*)* @crypto_report_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_report_one(%struct.crypto_alg* %0, %struct.crypto_user_alg* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_alg*, align 8
  %6 = alloca %struct.crypto_user_alg*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.crypto_report_larval, align 8
  store %struct.crypto_alg* %0, %struct.crypto_alg** %5, align 8
  store %struct.crypto_user_alg* %1, %struct.crypto_user_alg** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %9 = load %struct.crypto_user_alg*, %struct.crypto_user_alg** %6, align 8
  %10 = call i32 @memset(%struct.crypto_user_alg* %9, i32 0, i32 48)
  %11 = load %struct.crypto_user_alg*, %struct.crypto_user_alg** %6, align 8
  %12 = getelementptr inbounds %struct.crypto_user_alg, %struct.crypto_user_alg* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %15 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @strscpy(i32 %13, i8* %16, i32 4)
  %18 = load %struct.crypto_user_alg*, %struct.crypto_user_alg** %6, align 8
  %19 = getelementptr inbounds %struct.crypto_user_alg, %struct.crypto_user_alg* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %22 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @strscpy(i32 %20, i8* %23, i32 4)
  %25 = load %struct.crypto_user_alg*, %struct.crypto_user_alg** %6, align 8
  %26 = getelementptr inbounds %struct.crypto_user_alg, %struct.crypto_user_alg* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %29 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = call i8* @module_name(i32 %30)
  %32 = call i32 @strscpy(i32 %27, i8* %31, i32 4)
  %33 = load %struct.crypto_user_alg*, %struct.crypto_user_alg** %6, align 8
  %34 = getelementptr inbounds %struct.crypto_user_alg, %struct.crypto_user_alg* %33, i32 0, i32 4
  store i64 0, i64* %34, align 8
  %35 = load %struct.crypto_user_alg*, %struct.crypto_user_alg** %6, align 8
  %36 = getelementptr inbounds %struct.crypto_user_alg, %struct.crypto_user_alg* %35, i32 0, i32 3
  store i64 0, i64* %36, align 8
  %37 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %38 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.crypto_user_alg*, %struct.crypto_user_alg** %6, align 8
  %41 = getelementptr inbounds %struct.crypto_user_alg, %struct.crypto_user_alg* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %43 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %42, i32 0, i32 5
  %44 = call i32 @refcount_read(i32* %43)
  %45 = load %struct.crypto_user_alg*, %struct.crypto_user_alg** %6, align 8
  %46 = getelementptr inbounds %struct.crypto_user_alg, %struct.crypto_user_alg* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %48 = load i32, i32* @CRYPTOCFGA_PRIORITY_VAL, align 4
  %49 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %50 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @nla_put_u32(%struct.sk_buff* %47, i32 %48, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %3
  br label %123

55:                                               ; preds = %3
  %56 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %57 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @CRYPTO_ALG_LARVAL, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %55
  %63 = bitcast %struct.crypto_report_larval* %8 to %struct.crypto_user_alg*
  %64 = call i32 @memset(%struct.crypto_user_alg* %63, i32 0, i32 48)
  %65 = getelementptr inbounds %struct.crypto_report_larval, %struct.crypto_report_larval* %8, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @strscpy(i32 %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 4)
  %68 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %69 = load i32, i32* @CRYPTOCFGA_REPORT_LARVAL, align 4
  %70 = bitcast %struct.crypto_report_larval* %8 to %struct.crypto_user_alg*
  %71 = call i64 @nla_put(%struct.sk_buff* %68, i32 %69, i32 48, %struct.crypto_user_alg* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %62
  br label %123

74:                                               ; preds = %62
  br label %122

75:                                               ; preds = %55
  %76 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %77 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %76, i32 0, i32 3
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = icmp ne %struct.TYPE_2__* %78, null
  br i1 %79, label %80, label %99

80:                                               ; preds = %75
  %81 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %82 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %81, i32 0, i32 3
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64 (%struct.sk_buff*, %struct.crypto_alg*)*, i64 (%struct.sk_buff*, %struct.crypto_alg*)** %84, align 8
  %86 = icmp ne i64 (%struct.sk_buff*, %struct.crypto_alg*)* %85, null
  br i1 %86, label %87, label %99

87:                                               ; preds = %80
  %88 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %89 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %88, i32 0, i32 3
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i64 (%struct.sk_buff*, %struct.crypto_alg*)*, i64 (%struct.sk_buff*, %struct.crypto_alg*)** %91, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %94 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %95 = call i64 %92(%struct.sk_buff* %93, %struct.crypto_alg* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %87
  br label %123

98:                                               ; preds = %87
  br label %122

99:                                               ; preds = %80, %75
  %100 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %101 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @CRYPTO_ALG_TYPE_MASK, align 4
  %104 = load i32, i32* @CRYPTO_ALG_LARVAL, align 4
  %105 = or i32 %103, %104
  %106 = and i32 %102, %105
  switch i32 %106, label %121 [
    i32 129, label %107
    i32 128, label %114
  ]

107:                                              ; preds = %99
  %108 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %109 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %110 = call i32 @crypto_report_cipher(%struct.sk_buff* %108, %struct.crypto_alg* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %123

113:                                              ; preds = %107
  br label %121

114:                                              ; preds = %99
  %115 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %116 = load %struct.crypto_alg*, %struct.crypto_alg** %5, align 8
  %117 = call i32 @crypto_report_comp(%struct.sk_buff* %115, %struct.crypto_alg* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  br label %123

120:                                              ; preds = %114
  br label %121

121:                                              ; preds = %99, %120, %113
  br label %122

122:                                              ; preds = %121, %98, %74
  store i32 0, i32* %4, align 4
  br label %126

123:                                              ; preds = %119, %112, %97, %73, %54
  %124 = load i32, i32* @EMSGSIZE, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %123, %122
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local i32 @memset(%struct.crypto_user_alg*, i32, i32) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i8* @module_name(i32) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.crypto_user_alg*) #1

declare dso_local i32 @crypto_report_cipher(%struct.sk_buff*, %struct.crypto_alg*) #1

declare dso_local i32 @crypto_report_comp(%struct.sk_buff*, %struct.crypto_alg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
