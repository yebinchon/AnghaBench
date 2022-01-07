; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testmodes.c_test_ccm.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testmodes.c_test_ccm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"\00\01\02\03\04\05\06\07\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"\00\00\00\03\02\01\00\A0\A1\A2\A3\A4\A5\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"X\8C\97\9Aa\C6c\D2\F0f\D0\C2\C0\F9\89\80m_ka\DA\C3\84\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"\17\E8\D1,\FD\F9&\E0\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"@ABCDEFGHIJKLMNO\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c" !\22#\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"\10\11\12\13\14\15\16\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"qb\01[\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"M\AC%]\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c" !\22#$%&'()*+,-./01234567\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"\10\11\12\13\14\15\16\17\18\19\1A\1B\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"\E3\B2\01\A9\F5\B7\1Az\9B\1C\EA\EC\CD\97\E7\0Bav\AA\D9\A4B\8A\A5\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"HC\92\FB\C1\B0\99Q\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ccm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ccm() #0 {
  %1 = call i32 @check_ccm(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 8)
  %2 = call i32 @check_ccm(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 4)
  %3 = call i32 @check_ccm(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i32 12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32 8)
  ret void
}

declare dso_local i32 @check_ccm(i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
