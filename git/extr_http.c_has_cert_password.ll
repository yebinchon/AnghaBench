; ModuleID = '/home/carl/AnghaBench/git/extr_http.c_has_cert_password.c'
source_filename = "/home/carl/AnghaBench/git/extr_http.c_has_cert_password.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8*, i32 }

@ssl_cert = common dso_local global i8* null, align 8
@ssl_cert_password_required = common dso_local global i32 0, align 4
@cert_auth = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str = private unnamed_addr constant [5 x i8] c"cert\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @has_cert_password to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @has_cert_password() #0 {
  %1 = alloca i32, align 4
  %2 = load i8*, i8** @ssl_cert, align 8
  %3 = icmp eq i8* %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* @ssl_cert_password_required, align 4
  %6 = icmp ne i32 %5, 1
  br i1 %6, label %7, label %8

7:                                                ; preds = %4, %0
  store i32 0, i32* %1, align 4
  br label %18

8:                                                ; preds = %4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cert_auth, i32 0, i32 3), align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = call i8* @xstrdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cert_auth, i32 0, i32 2), align 8
  %13 = call i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i8* %13, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cert_auth, i32 0, i32 1), align 8
  %14 = load i8*, i8** @ssl_cert, align 8
  %15 = call i8* @xstrdup(i8* %14)
  store i8* %15, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cert_auth, i32 0, i32 0), align 8
  %16 = call i32 @credential_fill(%struct.TYPE_3__* @cert_auth)
  br label %17

17:                                               ; preds = %11, %8
  store i32 1, i32* %1, align 4
  br label %18

18:                                               ; preds = %17, %7
  %19 = load i32, i32* %1, align 4
  ret i32 %19
}

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @credential_fill(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
