; ModuleID = '/home/carl/AnghaBench/git/extr_imap-send.c_server_fill_credential.c'
source_filename = "/home/carl/AnghaBench/git/extr_imap-send.c_server_fill_credential.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imap_server_conf = type { i8*, i8*, i8*, i64 }
%struct.credential = type { i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [6 x i8] c"imaps\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"imap\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imap_server_conf*, %struct.credential*)* @server_fill_credential to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @server_fill_credential(%struct.imap_server_conf* %0, %struct.credential* %1) #0 {
  %3 = alloca %struct.imap_server_conf*, align 8
  %4 = alloca %struct.credential*, align 8
  store %struct.imap_server_conf* %0, %struct.imap_server_conf** %3, align 8
  store %struct.credential* %1, %struct.credential** %4, align 8
  %5 = load %struct.imap_server_conf*, %struct.imap_server_conf** %3, align 8
  %6 = getelementptr inbounds %struct.imap_server_conf, %struct.imap_server_conf* %5, i32 0, i32 2
  %7 = load i8*, i8** %6, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.imap_server_conf*, %struct.imap_server_conf** %3, align 8
  %11 = getelementptr inbounds %struct.imap_server_conf, %struct.imap_server_conf* %10, i32 0, i32 1
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %68

15:                                               ; preds = %9, %2
  %16 = load %struct.imap_server_conf*, %struct.imap_server_conf** %3, align 8
  %17 = getelementptr inbounds %struct.imap_server_conf, %struct.imap_server_conf* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)
  %22 = call i8* @xstrdup(i8* %21)
  %23 = load %struct.credential*, %struct.credential** %4, align 8
  %24 = getelementptr inbounds %struct.credential, %struct.credential* %23, i32 0, i32 3
  store i8* %22, i8** %24, align 8
  %25 = load %struct.imap_server_conf*, %struct.imap_server_conf** %3, align 8
  %26 = getelementptr inbounds %struct.imap_server_conf, %struct.imap_server_conf* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i8* @xstrdup(i8* %27)
  %29 = load %struct.credential*, %struct.credential** %4, align 8
  %30 = getelementptr inbounds %struct.credential, %struct.credential* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load %struct.imap_server_conf*, %struct.imap_server_conf** %3, align 8
  %32 = getelementptr inbounds %struct.imap_server_conf, %struct.imap_server_conf* %31, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  %34 = call i8* @xstrdup_or_null(i8* %33)
  %35 = load %struct.credential*, %struct.credential** %4, align 8
  %36 = getelementptr inbounds %struct.credential, %struct.credential* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = load %struct.imap_server_conf*, %struct.imap_server_conf** %3, align 8
  %38 = getelementptr inbounds %struct.imap_server_conf, %struct.imap_server_conf* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i8* @xstrdup_or_null(i8* %39)
  %41 = load %struct.credential*, %struct.credential** %4, align 8
  %42 = getelementptr inbounds %struct.credential, %struct.credential* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load %struct.credential*, %struct.credential** %4, align 8
  %44 = call i32 @credential_fill(%struct.credential* %43)
  %45 = load %struct.imap_server_conf*, %struct.imap_server_conf** %3, align 8
  %46 = getelementptr inbounds %struct.imap_server_conf, %struct.imap_server_conf* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %56, label %49

49:                                               ; preds = %15
  %50 = load %struct.credential*, %struct.credential** %4, align 8
  %51 = getelementptr inbounds %struct.credential, %struct.credential* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i8* @xstrdup(i8* %52)
  %54 = load %struct.imap_server_conf*, %struct.imap_server_conf** %3, align 8
  %55 = getelementptr inbounds %struct.imap_server_conf, %struct.imap_server_conf* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  br label %56

56:                                               ; preds = %49, %15
  %57 = load %struct.imap_server_conf*, %struct.imap_server_conf** %3, align 8
  %58 = getelementptr inbounds %struct.imap_server_conf, %struct.imap_server_conf* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %68, label %61

61:                                               ; preds = %56
  %62 = load %struct.credential*, %struct.credential** %4, align 8
  %63 = getelementptr inbounds %struct.credential, %struct.credential* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i8* @xstrdup(i8* %64)
  %66 = load %struct.imap_server_conf*, %struct.imap_server_conf** %3, align 8
  %67 = getelementptr inbounds %struct.imap_server_conf, %struct.imap_server_conf* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  br label %68

68:                                               ; preds = %14, %61, %56
  ret void
}

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @xstrdup_or_null(i8*) #1

declare dso_local i32 @credential_fill(%struct.credential*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
