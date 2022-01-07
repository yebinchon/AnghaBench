; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/src/extr_ssl.c_test_load_tickets_file.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/src/extr_ssl.c_test_load_tickets_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.st_session_ticket_t** }
%struct.st_session_ticket_t = type { i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"t/assets/session_tickets.yaml\00", align 1
@session_tickets = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"\E7\E3\C6\98\0B\182\BD]#\91ur\E8D\8F\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"\F6\E0q\D9\93\B0_w\CEQ\CB\0F\E2\E0\E1\8Cr\00\C2\A7\87:f\00\8C\8E\1Du\AE{\8E*\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"\F4\FC\B8o\DF\03\A7\F35c.f\8A\8F\E9V\C5\BF\E7zAA-&\99ycGh\99\9A\DDj\84\CA\FE\A4\1Bk,G\AA\F1\A5\14\CA\9D*\84\F4\8D\1F_p\18\FF\17@\CF\9B\94K\8F\CF\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"\A3\97\B6\B7\FA\B9)6b\03\F1o\C8\1F\FB\ED\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\F1\ED\89\CD\E6\87cc\0E\80\D2\BE\82|\FB\98\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"\E3\FErdOd1ZJ\8A\D67i\A3W|\CE\C4\DD\13\B2\0E\AF\8C\00\88\86\E5E\8D\B1\0Ee\8C\F2\A8?\04@:\C4\E9\805\D2B*u\80g0\EBO/\EE\12\FA\FF\95H\95\BCe\D1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_load_tickets_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_load_tickets_file() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.st_session_ticket_t*, align 8
  %3 = call i32 @load_tickets_file(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = icmp eq i32 %4, 0
  %6 = zext i1 %5 to i32
  %7 = call i32 @ok(i32 %6)
  %8 = load i32, i32* %1, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  br label %183

11:                                               ; preds = %0
  %12 = call i32 @pthread_rwlock_rdlock(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @session_tickets, i32 0, i32 0))
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @session_tickets, i32 0, i32 1, i32 0), align 8
  %14 = icmp eq i32 %13, 2
  %15 = zext i1 %14 to i32
  %16 = call i32 @ok(i32 %15)
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @session_tickets, i32 0, i32 1, i32 0), align 8
  %18 = icmp ne i32 %17, 2
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  br label %181

20:                                               ; preds = %11
  %21 = load %struct.st_session_ticket_t**, %struct.st_session_ticket_t*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @session_tickets, i32 0, i32 1, i32 1), align 8
  %22 = getelementptr inbounds %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %21, i64 0
  %23 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %22, align 8
  store %struct.st_session_ticket_t* %23, %struct.st_session_ticket_t** %2, align 8
  %24 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %2, align 8
  %25 = getelementptr inbounds %struct.st_session_ticket_t, %struct.st_session_ticket_t* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %28 = call i64 @memcmp(i32 %26, i32 %27)
  %29 = icmp eq i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @ok(i32 %30)
  %32 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %2, align 8
  %33 = getelementptr inbounds %struct.st_session_ticket_t, %struct.st_session_ticket_t* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 (...) @EVP_aes_256_cbc()
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @ok(i32 %37)
  %39 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %2, align 8
  %40 = call i32 @session_ticket_get_cipher_key(%struct.st_session_ticket_t* %39)
  %41 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %42 = call i64 @memcmp(i32 %40, i32 %41)
  %43 = icmp eq i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @ok(i32 %44)
  %46 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %2, align 8
  %47 = getelementptr inbounds %struct.st_session_ticket_t, %struct.st_session_ticket_t* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i64 (...) @EVP_sha256()
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @ok(i32 %51)
  %53 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %2, align 8
  %54 = call i32 @session_ticket_get_hmac_key(%struct.st_session_ticket_t* %53)
  %55 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0))
  %56 = call i64 @memcmp(i32 %54, i32 %55)
  %57 = icmp eq i64 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @ok(i32 %58)
  %60 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %2, align 8
  %61 = getelementptr inbounds %struct.st_session_ticket_t, %struct.st_session_ticket_t* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, 1437093330
  %64 = zext i1 %63 to i32
  %65 = call i32 @ok(i32 %64)
  %66 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %2, align 8
  %67 = getelementptr inbounds %struct.st_session_ticket_t, %struct.st_session_ticket_t* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 1437096929
  %70 = zext i1 %69 to i32
  %71 = call i32 @ok(i32 %70)
  %72 = load %struct.st_session_ticket_t**, %struct.st_session_ticket_t*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @session_tickets, i32 0, i32 1, i32 1), align 8
  %73 = getelementptr inbounds %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %72, i64 1
  %74 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %73, align 8
  store %struct.st_session_ticket_t* %74, %struct.st_session_ticket_t** %2, align 8
  %75 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %2, align 8
  %76 = getelementptr inbounds %struct.st_session_ticket_t, %struct.st_session_ticket_t* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %79 = call i64 @memcmp(i32 %77, i32 %78)
  %80 = icmp eq i64 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i32 @ok(i32 %81)
  %83 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %2, align 8
  %84 = getelementptr inbounds %struct.st_session_ticket_t, %struct.st_session_ticket_t* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i64 (...) @EVP_aes_128_cbc()
  %87 = icmp eq i64 %85, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @ok(i32 %88)
  %90 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %2, align 8
  %91 = call i32 @session_ticket_get_cipher_key(%struct.st_session_ticket_t* %90)
  %92 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %93 = call i64 @memcmp(i32 %91, i32 %92)
  %94 = icmp eq i64 %93, 0
  %95 = zext i1 %94 to i32
  %96 = call i32 @ok(i32 %95)
  %97 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %2, align 8
  %98 = getelementptr inbounds %struct.st_session_ticket_t, %struct.st_session_ticket_t* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = call i64 (...) @EVP_sha1()
  %101 = icmp eq i64 %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @ok(i32 %102)
  %104 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %2, align 8
  %105 = call i32 @session_ticket_get_hmac_key(%struct.st_session_ticket_t* %104)
  %106 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0))
  %107 = call i64 @memcmp(i32 %105, i32 %106)
  %108 = icmp eq i64 %107, 0
  %109 = zext i1 %108 to i32
  %110 = call i32 @ok(i32 %109)
  %111 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %2, align 8
  %112 = getelementptr inbounds %struct.st_session_ticket_t, %struct.st_session_ticket_t* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = icmp eq i32 %113, 1437092430
  %115 = zext i1 %114 to i32
  %116 = call i32 @ok(i32 %115)
  %117 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %2, align 8
  %118 = getelementptr inbounds %struct.st_session_ticket_t, %struct.st_session_ticket_t* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 1437096029
  %121 = zext i1 %120 to i32
  %122 = call i32 @ok(i32 %121)
  %123 = call %struct.st_session_ticket_t* @find_ticket_for_encryption(%struct.TYPE_4__* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @session_tickets, i32 0, i32 1), i32 1437092429)
  store %struct.st_session_ticket_t* %123, %struct.st_session_ticket_t** %2, align 8
  %124 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %2, align 8
  %125 = icmp eq %struct.st_session_ticket_t* %124, null
  %126 = zext i1 %125 to i32
  %127 = call i32 @ok(i32 %126)
  %128 = call %struct.st_session_ticket_t* @find_ticket_for_encryption(%struct.TYPE_4__* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @session_tickets, i32 0, i32 1), i32 1437092430)
  store %struct.st_session_ticket_t* %128, %struct.st_session_ticket_t** %2, align 8
  %129 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %2, align 8
  %130 = load %struct.st_session_ticket_t**, %struct.st_session_ticket_t*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @session_tickets, i32 0, i32 1, i32 1), align 8
  %131 = getelementptr inbounds %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %130, i64 1
  %132 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %131, align 8
  %133 = icmp eq %struct.st_session_ticket_t* %129, %132
  %134 = zext i1 %133 to i32
  %135 = call i32 @ok(i32 %134)
  %136 = call %struct.st_session_ticket_t* @find_ticket_for_encryption(%struct.TYPE_4__* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @session_tickets, i32 0, i32 1), i32 1437093329)
  store %struct.st_session_ticket_t* %136, %struct.st_session_ticket_t** %2, align 8
  %137 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %2, align 8
  %138 = load %struct.st_session_ticket_t**, %struct.st_session_ticket_t*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @session_tickets, i32 0, i32 1, i32 1), align 8
  %139 = getelementptr inbounds %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %138, i64 1
  %140 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %139, align 8
  %141 = icmp eq %struct.st_session_ticket_t* %137, %140
  %142 = zext i1 %141 to i32
  %143 = call i32 @ok(i32 %142)
  %144 = call %struct.st_session_ticket_t* @find_ticket_for_encryption(%struct.TYPE_4__* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @session_tickets, i32 0, i32 1), i32 1437093330)
  store %struct.st_session_ticket_t* %144, %struct.st_session_ticket_t** %2, align 8
  %145 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %2, align 8
  %146 = load %struct.st_session_ticket_t**, %struct.st_session_ticket_t*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @session_tickets, i32 0, i32 1, i32 1), align 8
  %147 = getelementptr inbounds %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %146, i64 0
  %148 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %147, align 8
  %149 = icmp eq %struct.st_session_ticket_t* %145, %148
  %150 = zext i1 %149 to i32
  %151 = call i32 @ok(i32 %150)
  %152 = call %struct.st_session_ticket_t* @find_ticket_for_encryption(%struct.TYPE_4__* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @session_tickets, i32 0, i32 1), i32 1437096029)
  store %struct.st_session_ticket_t* %152, %struct.st_session_ticket_t** %2, align 8
  %153 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %2, align 8
  %154 = load %struct.st_session_ticket_t**, %struct.st_session_ticket_t*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @session_tickets, i32 0, i32 1, i32 1), align 8
  %155 = getelementptr inbounds %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %154, i64 0
  %156 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %155, align 8
  %157 = icmp eq %struct.st_session_ticket_t* %153, %156
  %158 = zext i1 %157 to i32
  %159 = call i32 @ok(i32 %158)
  %160 = call %struct.st_session_ticket_t* @find_ticket_for_encryption(%struct.TYPE_4__* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @session_tickets, i32 0, i32 1), i32 1437096030)
  store %struct.st_session_ticket_t* %160, %struct.st_session_ticket_t** %2, align 8
  %161 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %2, align 8
  %162 = load %struct.st_session_ticket_t**, %struct.st_session_ticket_t*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @session_tickets, i32 0, i32 1, i32 1), align 8
  %163 = getelementptr inbounds %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %162, i64 0
  %164 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %163, align 8
  %165 = icmp eq %struct.st_session_ticket_t* %161, %164
  %166 = zext i1 %165 to i32
  %167 = call i32 @ok(i32 %166)
  %168 = call %struct.st_session_ticket_t* @find_ticket_for_encryption(%struct.TYPE_4__* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @session_tickets, i32 0, i32 1), i32 1437096929)
  store %struct.st_session_ticket_t* %168, %struct.st_session_ticket_t** %2, align 8
  %169 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %2, align 8
  %170 = load %struct.st_session_ticket_t**, %struct.st_session_ticket_t*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @session_tickets, i32 0, i32 1, i32 1), align 8
  %171 = getelementptr inbounds %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %170, i64 0
  %172 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %171, align 8
  %173 = icmp eq %struct.st_session_ticket_t* %169, %172
  %174 = zext i1 %173 to i32
  %175 = call i32 @ok(i32 %174)
  %176 = call %struct.st_session_ticket_t* @find_ticket_for_encryption(%struct.TYPE_4__* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @session_tickets, i32 0, i32 1), i32 1437096930)
  store %struct.st_session_ticket_t* %176, %struct.st_session_ticket_t** %2, align 8
  %177 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %2, align 8
  %178 = icmp eq %struct.st_session_ticket_t* %177, null
  %179 = zext i1 %178 to i32
  %180 = call i32 @ok(i32 %179)
  br label %181

181:                                              ; preds = %20, %19
  %182 = call i32 @pthread_rwlock_unlock(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @session_tickets, i32 0, i32 0))
  br label %183

183:                                              ; preds = %181, %10
  ret void
}

declare dso_local i32 @load_tickets_file(i8*) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i32 @pthread_rwlock_rdlock(i32*) #1

declare dso_local i64 @memcmp(i32, i32) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

declare dso_local i64 @EVP_aes_256_cbc(...) #1

declare dso_local i32 @session_ticket_get_cipher_key(%struct.st_session_ticket_t*) #1

declare dso_local i64 @EVP_sha256(...) #1

declare dso_local i32 @session_ticket_get_hmac_key(%struct.st_session_ticket_t*) #1

declare dso_local i64 @EVP_aes_128_cbc(...) #1

declare dso_local i64 @EVP_sha1(...) #1

declare dso_local %struct.st_session_ticket_t* @find_ticket_for_encryption(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @pthread_rwlock_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
