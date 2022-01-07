; ModuleID = '/home/carl/AnghaBench/kphp-kdb/binlog/extr_kdb-binlog-common.c_set_schema.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/binlog/extr_kdb-binlog-common.c_set_schema.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@log_schema = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"unknown schema: %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_schema(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 -1, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = and i32 %4, -65536
  switch i32 %5, label %102 [
    i32 1805844480, label %6
    i32 988151808, label %9
    i32 -1091633152, label %12
    i32 736886784, label %15
    i32 1405353984, label %18
    i32 1861353472, label %21
    i32 749928448, label %24
    i32 -267583488, label %27
    i32 1336737792, label %30
    i32 987037696, label %33
    i32 2057043968, label %36
    i32 1595408384, label %39
    i32 -1343881216, label %42
    i32 1605173248, label %45
    i32 554237952, label %48
    i32 927268864, label %51
    i32 -93126656, label %54
    i32 1699807232, label %57
    i32 1916600320, label %60
    i32 1038942208, label %63
    i32 1377697792, label %66
    i32 340393984, label %69
    i32 -2141585408, label %72
    i32 535560192, label %75
    i32 -1851326464, label %78
    i32 695795712, label %81
    i32 -307691520, label %84
    i32 -307625984, label %87
    i32 -1888878592, label %90
    i32 -91291648, label %93
    i32 -1894907904, label %96
    i32 -106364928, label %99
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @init_targ_data(i32 %7)
  store i32 %8, i32* %3, align 4
  br label %102

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @init_stats_data(i32 %10)
  store i32 %11, i32* %3, align 4
  br label %102

12:                                               ; preds = %1
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @init_search_data(i32 %13)
  store i32 %14, i32* %3, align 4
  br label %102

15:                                               ; preds = %1
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @init_friends_data(i32 %16)
  store i32 %17, i32* %3, align 4
  br label %102

18:                                               ; preds = %1
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @init_news_data(i32 %19)
  store i32 %20, i32* %3, align 4
  br label %102

21:                                               ; preds = %1
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @init_lists_data(i32 %22)
  store i32 %23, i32* %3, align 4
  br label %102

24:                                               ; preds = %1
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @init_text_data(i32 %25)
  store i32 %26, i32* %3, align 4
  br label %102

27:                                               ; preds = %1
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @init_money_data(i32 %28)
  store i32 %29, i32* %3, align 4
  br label %102

30:                                               ; preds = %1
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @init_hints_data(i32 %31)
  store i32 %32, i32* %3, align 4
  br label %102

33:                                               ; preds = %1
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @init_bayes_data(i32 %34)
  store i32 %35, i32* %3, align 4
  br label %102

36:                                               ; preds = %1
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @init_magus_data(i32 %37)
  store i32 %38, i32* %3, align 4
  br label %102

39:                                               ; preds = %1
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @init_photo_data(i32 %40)
  store i32 %41, i32* %3, align 4
  br label %102

42:                                               ; preds = %1
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @init_mf_data(i32 %43)
  store i32 %44, i32* %3, align 4
  br label %102

45:                                               ; preds = %1
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @init_isearch_data(i32 %46)
  store i32 %47, i32* %3, align 4
  br label %102

48:                                               ; preds = %1
  %49 = load i32, i32* %2, align 4
  %50 = call i32 @init_logs_data(i32 %49)
  store i32 %50, i32* %3, align 4
  br label %102

51:                                               ; preds = %1
  %52 = load i32, i32* %2, align 4
  %53 = call i32 @init_pmemcached_data(i32 %52)
  store i32 %53, i32* %3, align 4
  br label %102

54:                                               ; preds = %1
  %55 = load i32, i32* %2, align 4
  %56 = call i32 @init_sql_data(i32 %55)
  store i32 %56, i32* %3, align 4
  br label %102

57:                                               ; preds = %1
  %58 = load i32, i32* %2, align 4
  %59 = call i32 @init_password_data(i32 %58)
  store i32 %59, i32* %3, align 4
  br label %102

60:                                               ; preds = %1
  %61 = load i32, i32* %2, align 4
  %62 = call i32 @init_filesys_data(i32 %61)
  store i32 %62, i32* %3, align 4
  br label %102

63:                                               ; preds = %1
  %64 = load i32, i32* %2, align 4
  %65 = call i32 @init_cache_data(i32 %64)
  store i32 %65, i32* %3, align 4
  br label %102

66:                                               ; preds = %1
  %67 = load i32, i32* %2, align 4
  %68 = call i32 @init_weights_data(i32 %67)
  store i32 %68, i32* %3, align 4
  br label %102

69:                                               ; preds = %1
  %70 = load i32, i32* %2, align 4
  %71 = call i32 @init_dns_data(i32 %70)
  store i32 %71, i32* %3, align 4
  br label %102

72:                                               ; preds = %1
  %73 = load i32, i32* %2, align 4
  %74 = call i32 @init_storage_data(i32 %73)
  store i32 %74, i32* %3, align 4
  br label %102

75:                                               ; preds = %1
  %76 = load i32, i32* %2, align 4
  %77 = call i32 @init_support_data(i32 %76)
  store i32 %77, i32* %3, align 4
  br label %102

78:                                               ; preds = %1
  %79 = load i32, i32* %2, align 4
  %80 = call i32 @init_antispam_data(i32 %79)
  store i32 %80, i32* %3, align 4
  br label %102

81:                                               ; preds = %1
  %82 = load i32, i32* %2, align 4
  %83 = call i32 @init_copyexec_aux_data(i32 %82)
  store i32 %83, i32* %3, align 4
  br label %102

84:                                               ; preds = %1
  %85 = load i32, i32* %2, align 4
  %86 = call i32 @init_copyexec_main_data(i32 %85)
  store i32 %86, i32* %3, align 4
  br label %102

87:                                               ; preds = %1
  %88 = load i32, i32* %2, align 4
  %89 = call i32 @init_copyexec_result_data(i32 %88)
  store i32 %89, i32* %3, align 4
  br label %102

90:                                               ; preds = %1
  %91 = load i32, i32* %2, align 4
  %92 = call i32 @init_gms_data(i32 %91)
  store i32 %92, i32* %3, align 4
  br label %102

93:                                               ; preds = %1
  %94 = load i32, i32* %2, align 4
  %95 = call i32 @init_gms_money_data(i32 %94)
  store i32 %95, i32* %3, align 4
  br label %102

96:                                               ; preds = %1
  %97 = load i32, i32* %2, align 4
  %98 = call i32 @init_seqmap_data(i32 %97)
  store i32 %98, i32* %3, align 4
  br label %102

99:                                               ; preds = %1
  %100 = load i32, i32* %2, align 4
  %101 = call i32 @init_rpc_proxy_data(i32 %100)
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %1, %99, %96, %93, %90, %87, %84, %81, %78, %75, %72, %69, %66, %63, %60, %57, %54, %51, %48, %45, %42, %39, %36, %33, %30, %27, %24, %21, %18, %15, %12, %9, %6
  %103 = load i32, i32* %3, align 4
  %104 = icmp sge i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = load i32, i32* %2, align 4
  store i32 %106, i32* @log_schema, align 4
  br label %111

107:                                              ; preds = %102
  %108 = load i32, i32* @stderr, align 4
  %109 = load i32, i32* %2, align 4
  %110 = call i32 @fprintf(i32 %108, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %107, %105
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @init_targ_data(i32) #1

declare dso_local i32 @init_stats_data(i32) #1

declare dso_local i32 @init_search_data(i32) #1

declare dso_local i32 @init_friends_data(i32) #1

declare dso_local i32 @init_news_data(i32) #1

declare dso_local i32 @init_lists_data(i32) #1

declare dso_local i32 @init_text_data(i32) #1

declare dso_local i32 @init_money_data(i32) #1

declare dso_local i32 @init_hints_data(i32) #1

declare dso_local i32 @init_bayes_data(i32) #1

declare dso_local i32 @init_magus_data(i32) #1

declare dso_local i32 @init_photo_data(i32) #1

declare dso_local i32 @init_mf_data(i32) #1

declare dso_local i32 @init_isearch_data(i32) #1

declare dso_local i32 @init_logs_data(i32) #1

declare dso_local i32 @init_pmemcached_data(i32) #1

declare dso_local i32 @init_sql_data(i32) #1

declare dso_local i32 @init_password_data(i32) #1

declare dso_local i32 @init_filesys_data(i32) #1

declare dso_local i32 @init_cache_data(i32) #1

declare dso_local i32 @init_weights_data(i32) #1

declare dso_local i32 @init_dns_data(i32) #1

declare dso_local i32 @init_storage_data(i32) #1

declare dso_local i32 @init_support_data(i32) #1

declare dso_local i32 @init_antispam_data(i32) #1

declare dso_local i32 @init_copyexec_aux_data(i32) #1

declare dso_local i32 @init_copyexec_main_data(i32) #1

declare dso_local i32 @init_copyexec_result_data(i32) #1

declare dso_local i32 @init_gms_data(i32) #1

declare dso_local i32 @init_gms_money_data(i32) #1

declare dso_local i32 @init_seqmap_data(i32) #1

declare dso_local i32 @init_rpc_proxy_data(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
