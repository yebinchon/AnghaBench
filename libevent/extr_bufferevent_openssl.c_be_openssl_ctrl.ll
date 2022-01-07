; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent_openssl.c_be_openssl_ctrl.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent_openssl.c_be_openssl_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%union.bufferevent_ctrl_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bufferevent_openssl = type { %struct.TYPE_2__*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bufferevent*, i32, %union.bufferevent_ctrl_data*)* @be_openssl_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_openssl_ctrl(%struct.bufferevent* %0, i32 %1, %union.bufferevent_ctrl_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bufferevent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.bufferevent_ctrl_data*, align 8
  %8 = alloca %struct.bufferevent_openssl*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.bufferevent_ctrl_data* %2, %union.bufferevent_ctrl_data** %7, align 8
  %11 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %12 = call %struct.bufferevent_openssl* @upcast(%struct.bufferevent* %11)
  store %struct.bufferevent_openssl* %12, %struct.bufferevent_openssl** %8, align 8
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %81 [
    i32 128, label %14
    i32 130, label %54
    i32 129, label %74
    i32 131, label %80
  ]

14:                                               ; preds = %3
  %15 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %8, align 8
  %16 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %31, label %19

19:                                               ; preds = %14
  %20 = load %union.bufferevent_ctrl_data*, %union.bufferevent_ctrl_data** %7, align 8
  %21 = bitcast %union.bufferevent_ctrl_data* %20 to i8**
  %22 = load i8*, i8** %21, align 8
  %23 = ptrtoint i8* %22 to i32
  %24 = call i32* @BIO_new_socket(i32 %23, i32 0)
  store i32* %24, i32** %9, align 8
  %25 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %8, align 8
  %26 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @SSL_set_bio(i32 %27, i32* %28, i32* %29)
  br label %45

31:                                               ; preds = %14
  %32 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %8, align 8
  %33 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = call i32* @BIO_new_bufferevent(%struct.TYPE_2__* %34)
  store i32* %35, i32** %10, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  store i32 -1, i32* %4, align 4
  br label %82

38:                                               ; preds = %31
  %39 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %8, align 8
  %40 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %10, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = call i32 @SSL_set_bio(i32 %41, i32* %42, i32* %43)
  br label %45

45:                                               ; preds = %38, %19
  %46 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %8, align 8
  %47 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %8, align 8
  %48 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %union.bufferevent_ctrl_data*, %union.bufferevent_ctrl_data** %7, align 8
  %51 = bitcast %union.bufferevent_ctrl_data* %50 to i8**
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @be_openssl_set_fd(%struct.bufferevent_openssl* %46, i32 %49, i8* %52)
  store i32 %53, i32* %4, align 4
  br label %82

54:                                               ; preds = %3
  %55 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %8, align 8
  %56 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = icmp ne %struct.TYPE_2__* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %8, align 8
  %61 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = call i8* @event_get_fd(i32* %63)
  %65 = load %union.bufferevent_ctrl_data*, %union.bufferevent_ctrl_data** %7, align 8
  %66 = bitcast %union.bufferevent_ctrl_data* %65 to i8**
  store i8* %64, i8** %66, align 8
  br label %73

67:                                               ; preds = %54
  %68 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %69 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %68, i32 0, i32 0
  %70 = call i8* @event_get_fd(i32* %69)
  %71 = load %union.bufferevent_ctrl_data*, %union.bufferevent_ctrl_data** %7, align 8
  %72 = bitcast %union.bufferevent_ctrl_data* %71 to i8**
  store i8* %70, i8** %72, align 8
  br label %73

73:                                               ; preds = %67, %59
  store i32 0, i32* %4, align 4
  br label %82

74:                                               ; preds = %3
  %75 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %8, align 8
  %76 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load %union.bufferevent_ctrl_data*, %union.bufferevent_ctrl_data** %7, align 8
  %79 = bitcast %union.bufferevent_ctrl_data* %78 to %struct.TYPE_2__**
  store %struct.TYPE_2__* %77, %struct.TYPE_2__** %79, align 8
  store i32 0, i32* %4, align 4
  br label %82

80:                                               ; preds = %3
  br label %81

81:                                               ; preds = %3, %80
  store i32 -1, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %74, %73, %45, %37
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.bufferevent_openssl* @upcast(%struct.bufferevent*) #1

declare dso_local i32* @BIO_new_socket(i32, i32) #1

declare dso_local i32 @SSL_set_bio(i32, i32*, i32*) #1

declare dso_local i32* @BIO_new_bufferevent(%struct.TYPE_2__*) #1

declare dso_local i32 @be_openssl_set_fd(%struct.bufferevent_openssl*, i32, i8*) #1

declare dso_local i8* @event_get_fd(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
