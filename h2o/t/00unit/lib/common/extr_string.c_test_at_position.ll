; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_string.c_test_at_position.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_string.c_test_at_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"hello\0Aworld\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"hello\0A^\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"hello\0A    ^\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"hello\0A     ^\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"world\0A^\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"world\0A    ^\0A\00", align 1
@.str.6 = private unnamed_addr constant [87 x i8] c"_________1_________2_________3_________4_________5_________6_________7_________\0Aworld\0A\00", align 1
@.str.7 = private unnamed_addr constant [84 x i8] c"_________1_________2_________3_________4_________5_________6_________7______\0A    ^\0A\00", align 1
@.str.8 = private unnamed_addr constant [102 x i8] c"_________3_________4_________5_________6_________7_________\0A                                       ^\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_at_position to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_at_position() #0 {
  %1 = alloca [160 x i8], align 16
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds [160 x i8], [160 x i8]* %1, i64 0, i64 0
  %4 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @h2o_str_at_position(i8* %3, i32 %4, i32 1, i32 1)
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp eq i32 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @ok(i32 %8)
  %10 = getelementptr inbounds [160 x i8], [160 x i8]* %1, i64 0, i64 0
  %11 = call i64 @strcmp(i8* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp eq i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @ok(i32 %13)
  %15 = getelementptr inbounds [160 x i8], [160 x i8]* %1, i64 0, i64 0
  %16 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @h2o_str_at_position(i8* %15, i32 %16, i32 1, i32 5)
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @ok(i32 %20)
  %22 = getelementptr inbounds [160 x i8], [160 x i8]* %1, i64 0, i64 0
  %23 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @ok(i32 %25)
  %27 = getelementptr inbounds [160 x i8], [160 x i8]* %1, i64 0, i64 0
  %28 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %29 = call i32 @h2o_str_at_position(i8* %27, i32 %28, i32 1, i32 6)
  store i32 %29, i32* %2, align 4
  %30 = load i32, i32* %2, align 4
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @ok(i32 %32)
  %34 = getelementptr inbounds [160 x i8], [160 x i8]* %1, i64 0, i64 0
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @ok(i32 %37)
  %39 = getelementptr inbounds [160 x i8], [160 x i8]* %1, i64 0, i64 0
  %40 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %41 = call i32 @h2o_str_at_position(i8* %39, i32 %40, i32 1, i32 7)
  store i32 %41, i32* %2, align 4
  %42 = load i32, i32* %2, align 4
  %43 = icmp eq i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @ok(i32 %44)
  %46 = getelementptr inbounds [160 x i8], [160 x i8]* %1, i64 0, i64 0
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @ok(i32 %49)
  %51 = getelementptr inbounds [160 x i8], [160 x i8]* %1, i64 0, i64 0
  %52 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %53 = call i32 @h2o_str_at_position(i8* %51, i32 %52, i32 2, i32 1)
  store i32 %53, i32* %2, align 4
  %54 = load i32, i32* %2, align 4
  %55 = icmp eq i32 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 @ok(i32 %56)
  %58 = getelementptr inbounds [160 x i8], [160 x i8]* %1, i64 0, i64 0
  %59 = call i64 @strcmp(i8* %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %60 = icmp eq i64 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i32 @ok(i32 %61)
  %63 = getelementptr inbounds [160 x i8], [160 x i8]* %1, i64 0, i64 0
  %64 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %65 = call i32 @h2o_str_at_position(i8* %63, i32 %64, i32 2, i32 5)
  store i32 %65, i32* %2, align 4
  %66 = load i32, i32* %2, align 4
  %67 = icmp eq i32 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i32 @ok(i32 %68)
  %70 = getelementptr inbounds [160 x i8], [160 x i8]* %1, i64 0, i64 0
  %71 = call i64 @strcmp(i8* %70, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %72 = icmp eq i64 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i32 @ok(i32 %73)
  %75 = getelementptr inbounds [160 x i8], [160 x i8]* %1, i64 0, i64 0
  %76 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %77 = call i32 @h2o_str_at_position(i8* %75, i32 %76, i32 1, i32 7)
  store i32 %77, i32* %2, align 4
  %78 = load i32, i32* %2, align 4
  %79 = icmp eq i32 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i32 @ok(i32 %80)
  %82 = getelementptr inbounds [160 x i8], [160 x i8]* %1, i64 0, i64 0
  %83 = call i64 @strcmp(i8* %82, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %84 = icmp eq i64 %83, 0
  %85 = zext i1 %84 to i32
  %86 = call i32 @ok(i32 %85)
  %87 = getelementptr inbounds [160 x i8], [160 x i8]* %1, i64 0, i64 0
  %88 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.6, i64 0, i64 0))
  %89 = call i32 @h2o_str_at_position(i8* %87, i32 %88, i32 1, i32 5)
  store i32 %89, i32* %2, align 4
  %90 = load i32, i32* %2, align 4
  %91 = icmp eq i32 %90, 0
  %92 = zext i1 %91 to i32
  %93 = call i32 @ok(i32 %92)
  %94 = getelementptr inbounds [160 x i8], [160 x i8]* %1, i64 0, i64 0
  %95 = call i64 @strcmp(i8* %94, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.7, i64 0, i64 0))
  %96 = icmp eq i64 %95, 0
  %97 = zext i1 %96 to i32
  %98 = call i32 @ok(i32 %97)
  %99 = getelementptr inbounds [160 x i8], [160 x i8]* %1, i64 0, i64 0
  %100 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.6, i64 0, i64 0))
  %101 = call i32 @h2o_str_at_position(i8* %99, i32 %100, i32 1, i32 60)
  store i32 %101, i32* %2, align 4
  %102 = load i32, i32* %2, align 4
  %103 = icmp eq i32 %102, 0
  %104 = zext i1 %103 to i32
  %105 = call i32 @ok(i32 %104)
  %106 = getelementptr inbounds [160 x i8], [160 x i8]* %1, i64 0, i64 0
  %107 = call i64 @strcmp(i8* %106, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.8, i64 0, i64 0))
  %108 = icmp eq i64 %107, 0
  %109 = zext i1 %108 to i32
  %110 = call i32 @ok(i32 %109)
  %111 = getelementptr inbounds [160 x i8], [160 x i8]* %1, i64 0, i64 0
  %112 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %113 = call i32 @h2o_str_at_position(i8* %111, i32 %112, i32 1, i32 20)
  store i32 %113, i32* %2, align 4
  %114 = load i32, i32* %2, align 4
  %115 = icmp eq i32 %114, 0
  %116 = zext i1 %115 to i32
  %117 = call i32 @ok(i32 %116)
  %118 = getelementptr inbounds [160 x i8], [160 x i8]* %1, i64 0, i64 0
  %119 = call i64 @strcmp(i8* %118, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %120 = icmp eq i64 %119, 0
  %121 = zext i1 %120 to i32
  %122 = call i32 @ok(i32 %121)
  %123 = getelementptr inbounds [160 x i8], [160 x i8]* %1, i64 0, i64 0
  %124 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %125 = call i32 @h2o_str_at_position(i8* %123, i32 %124, i32 0, i32 1)
  store i32 %125, i32* %2, align 4
  %126 = load i32, i32* %2, align 4
  %127 = icmp ne i32 %126, 0
  %128 = zext i1 %127 to i32
  %129 = call i32 @ok(i32 %128)
  %130 = getelementptr inbounds [160 x i8], [160 x i8]* %1, i64 0, i64 0
  %131 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %132 = call i32 @h2o_str_at_position(i8* %130, i32 %131, i32 1, i32 0)
  store i32 %132, i32* %2, align 4
  %133 = load i32, i32* %2, align 4
  %134 = icmp ne i32 %133, 0
  %135 = zext i1 %134 to i32
  %136 = call i32 @ok(i32 %135)
  %137 = getelementptr inbounds [160 x i8], [160 x i8]* %1, i64 0, i64 0
  %138 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %139 = call i32 @h2o_str_at_position(i8* %137, i32 %138, i32 4, i32 1)
  store i32 %139, i32* %2, align 4
  %140 = load i32, i32* %2, align 4
  %141 = icmp ne i32 %140, 0
  %142 = zext i1 %141 to i32
  %143 = call i32 @ok(i32 %142)
  ret void
}

declare dso_local i32 @h2o_str_at_position(i8*, i32, i32, i32) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
