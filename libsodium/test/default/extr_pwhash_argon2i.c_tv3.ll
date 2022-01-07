; ModuleID = '/home/carl/AnghaBench/libsodium/test/default/extr_pwhash_argon2i.c_tv3.c'
source_filename = "/home/carl/AnghaBench/libsodium/test/default/extr_pwhash_argon2i.c_tv3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8*, i8* }

@tv3.tests = internal global [4 x %struct.anon] [%struct.anon { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.1, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.2, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.4, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.6, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [96 x i8] c"$argon2i$v=19$m=4096,t=1,p=1$X1NhbHQAAAAAAAAAAAAAAA$bWh++MKN1OiFHKgIWTLvIi1iHicmHH7+Fv3K88ifFfI\00", align 1
@.str.2 = private unnamed_addr constant [96 x i8] c"$argon2i$v=19$m=2048,t=4,p=1$SWkxaUhpY21ISDcrRnYzSw$Mbg/Eck1kpZir5T9io7C64cpffdTBaORgyriLQFgQj8\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"^T5H$JYt39n%K*j:W]!1s?vg!:jGi]Ax?..l7[p0v:1jHTpla9;]bUN;?bWyCbtqg \00", align 1
@.str.4 = private unnamed_addr constant [96 x i8] c"$argon2i$v=19$m=4096,t=3,p=2$X1NhbHQAAAAAAAAAAAAAAA$z/QMiU4lQxGsYNc/+K/bizwsA1P11UG2dj/7+aILJ4I\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"K3S=KyH#)36_?]LxeR8QNKw6X=gFbxai$C%29V*\00", align 1
@.str.6 = private unnamed_addr constant [96 x i8] c"$argon2i$v=19$m=4096,t=3,p=1$X1NhbHQAAAAAAAAAAAAAAA$fu2Wsecyt+yPnBvSvYN16oP5ozRmkp0ixJ1YL19V3Uo\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"[tv3] pwhash_str failure (maybe intentional): [%u]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tv3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tv3() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %70, %0
  %6 = load i64, i64* %3, align 8
  %7 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @tv3.tests, i64 0, i64 %6
  %8 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 1
  %9 = load i8*, i8** %8, align 8
  %10 = call i32 @strlen(i8* %9)
  %11 = add i32 %10, 1
  %12 = call i64 @sodium_malloc(i32 %11)
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** %1, align 8
  %14 = load i8*, i8** %1, align 8
  %15 = icmp ne i8* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i8*, i8** %1, align 8
  %19 = load i64, i64* %3, align 8
  %20 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @tv3.tests, i64 0, i64 %19
  %21 = getelementptr inbounds %struct.anon, %struct.anon* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = load i64, i64* %3, align 8
  %24 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @tv3.tests, i64 0, i64 %23
  %25 = getelementptr inbounds %struct.anon, %struct.anon* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @strlen(i8* %26)
  %28 = add i32 %27, 1
  %29 = call i32 @memcpy(i8* %18, i8* %22, i32 %28)
  %30 = load i64, i64* %3, align 8
  %31 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @tv3.tests, i64 0, i64 %30
  %32 = getelementptr inbounds %struct.anon, %struct.anon* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 16
  %34 = call i32 @strlen(i8* %33)
  %35 = add i32 %34, 1
  %36 = call i64 @sodium_malloc(i32 %35)
  %37 = inttoptr i64 %36 to i8*
  store i8* %37, i8** %2, align 8
  %38 = load i8*, i8** %2, align 8
  %39 = icmp ne i8* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load i8*, i8** %2, align 8
  %43 = load i64, i64* %3, align 8
  %44 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @tv3.tests, i64 0, i64 %43
  %45 = getelementptr inbounds %struct.anon, %struct.anon* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 16
  %47 = load i64, i64* %3, align 8
  %48 = getelementptr inbounds [4 x %struct.anon], [4 x %struct.anon]* @tv3.tests, i64 0, i64 %47
  %49 = getelementptr inbounds %struct.anon, %struct.anon* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 16
  %51 = call i32 @strlen(i8* %50)
  %52 = add i32 %51, 1
  %53 = call i32 @memcpy(i8* %42, i8* %46, i32 %52)
  %54 = load i8*, i8** %1, align 8
  %55 = load i8*, i8** %2, align 8
  %56 = load i8*, i8** %2, align 8
  %57 = call i32 @strlen(i8* %56)
  %58 = call i32 @crypto_pwhash_str_verify(i8* %54, i8* %55, i32 %57)
  store i32 %58, i32* %4, align 4
  %59 = load i8*, i8** %1, align 8
  %60 = call i32 @sodium_free(i8* %59)
  %61 = load i8*, i8** %2, align 8
  %62 = call i32 @sodium_free(i8* %61)
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %5
  %66 = load i64, i64* %3, align 8
  %67 = trunc i64 %66 to i32
  %68 = call i32 @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %65, %5
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %3, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %3, align 8
  %73 = icmp ult i64 %72, 4
  br i1 %73, label %5, label %74

74:                                               ; preds = %70
  ret void
}

declare dso_local i64 @sodium_malloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @crypto_pwhash_str_verify(i8*, i8*, i32) #1

declare dso_local i32 @sodium_free(i8*) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
