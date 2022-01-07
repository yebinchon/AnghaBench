; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testsha2.c_test_pbkdf2_sha256.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testsha2.c_test_pbkdf2_sha256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"password\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"salt\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"\12\0F\B6\CF\FC\F8\B3,C\E7\22RV\C4\F87\A8eH\C9,\CC5H\08\05\98|\B7\0B\E1{\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"\AEM\0C\95\AFkF\D3-\0A\DF\F9(\F0m\D0*0?\8E\F3\C2Q\DF\D6\E2\D8Z\95GLC\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"\C5\E4x\D5\92\88\C8A\AAS\0D\B6\84\\L\8D\96(\93\A0\01\CEN\11\A4\968s\AA\98\13J\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"passwordPASSWORDpassword\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"saltSALTsaltSALTsaltSALTsaltSALTsalt\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"4\8C\89\DB\CB\D3+/2\D8\14\B8\11n\84\CF+\174~\BC\18\00\18\1CN*\1F\B8\DDS\E1\C65Q\8C}\ACG\E9\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"\9E\83\F2y\C0@\F2\A1\1A\A4\A0+$\C4\18\F2\D3\CB9V\0C\96'\FAOG\E3\BC\C2\89|=\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"\EAX\08A\1E\B0\C7\E80\DE\ABU\09l\EEX'a\E2*\9B\C04\E3\EC\E9%\22[\07\BFF\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"pass\00word\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"sa\00lt\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"\89\B6\9D\05\16\F8)\89<ib&e\0A\86\87\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_pbkdf2_sha256 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_pbkdf2_sha256() #0 {
  %1 = call i32 @check_pkbdf2_sha256(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4, i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 32)
  %2 = call i32 @check_pkbdf2_sha256(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4, i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 32)
  %3 = call i32 @check_pkbdf2_sha256(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4, i32 4096, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 32)
  %4 = call i32 @check_pkbdf2_sha256(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 24, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 36, i32 4096, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i32 40)
  %5 = call i32 @check_pkbdf2_sha256(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4, i32 1024, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 32)
  %6 = call i32 @check_pkbdf2_sha256(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i32 0, i32 1024, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 32)
  %7 = call i32 @check_pkbdf2_sha256(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32 5, i32 4096, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 16)
  ret void
}

declare dso_local i32 @check_pkbdf2_sha256(i8*, i32, i8*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
