; ModuleID = '/home/carl/AnghaBench/git/extr_imap-send.c_socket_perror.c'
source_filename = "/home/carl/AnghaBench/git/extr_imap-send.c_socket_perror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imap_socket = type { i64 }

@.str = private unnamed_addr constant [12 x i8] c"SSL_connect\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"%s: unexpected EOF\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.imap_socket*, i32)* @socket_perror to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @socket_perror(i8* %0, %struct.imap_socket* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.imap_socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.imap_socket* %1, %struct.imap_socket** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.imap_socket*, %struct.imap_socket** %5, align 8
  %9 = getelementptr inbounds %struct.imap_socket, %struct.imap_socket* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %3
  %13 = load %struct.imap_socket*, %struct.imap_socket** %5, align 8
  %14 = getelementptr inbounds %struct.imap_socket, %struct.imap_socket* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @SSL_get_error(i64 %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %22 [
    i32 129, label %19
    i32 128, label %20
  ]

19:                                               ; preds = %12
  br label %24

20:                                               ; preds = %12
  %21 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %24

22:                                               ; preds = %12
  %23 = call i32 @ssl_socket_perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %20, %19
  br label %36

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @perror(i8* %29)
  br label %35

31:                                               ; preds = %25
  %32 = load i32, i32* @stderr, align 4
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @fprintf(i32 %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %31, %28
  br label %36

36:                                               ; preds = %35, %24
  ret void
}

declare dso_local i32 @SSL_get_error(i64, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @ssl_socket_perror(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
