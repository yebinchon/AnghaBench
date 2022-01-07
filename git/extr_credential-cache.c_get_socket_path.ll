; ModuleID = '/home/carl/AnghaBench/git/extr_credential-cache.c_get_socket_path.c'
source_filename = "/home/carl/AnghaBench/git/extr_credential-cache.c_get_socket_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"~/.git-credential-cache\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%s/socket\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"credential/socket\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @get_socket_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_socket_path() #0 {
  %1 = alloca %struct.stat, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = call i8* @expand_user_path(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 0)
  store i8* %4, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %19

7:                                                ; preds = %0
  %8 = load i8*, i8** %2, align 8
  %9 = call i32 @stat(i8* %8, %struct.stat* %1)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @S_ISDIR(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i8*, i8** %2, align 8
  %18 = call i8* @xstrfmt(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  store i8* %18, i8** %3, align 8
  br label %21

19:                                               ; preds = %11, %7, %0
  %20 = call i8* @xdg_cache_home(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i8* %20, i8** %3, align 8
  br label %21

21:                                               ; preds = %19, %16
  %22 = load i8*, i8** %2, align 8
  %23 = call i32 @free(i8* %22)
  %24 = load i8*, i8** %3, align 8
  ret i8* %24
}

declare dso_local i8* @expand_user_path(i8*, i32) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i8* @xstrfmt(i8*, i8*) #1

declare dso_local i8* @xdg_cache_home(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
