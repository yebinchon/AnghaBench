; ModuleID = '/home/carl/AnghaBench/git/extr_credential.c_credential_apply_config.c'
source_filename = "/home/carl/AnghaBench/git/extr_credential.c_credential_apply_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.credential = type { i32, i32, i32, i32 }

@credential_config_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.credential*)* @credential_apply_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @credential_apply_config(%struct.credential* %0) #0 {
  %2 = alloca %struct.credential*, align 8
  store %struct.credential* %0, %struct.credential** %2, align 8
  %3 = load %struct.credential*, %struct.credential** %2, align 8
  %4 = getelementptr inbounds %struct.credential, %struct.credential* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %29

8:                                                ; preds = %1
  %9 = load i32, i32* @credential_config_callback, align 4
  %10 = load %struct.credential*, %struct.credential** %2, align 8
  %11 = call i32 @git_config(i32 %9, %struct.credential* %10)
  %12 = load %struct.credential*, %struct.credential** %2, align 8
  %13 = getelementptr inbounds %struct.credential, %struct.credential* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = load %struct.credential*, %struct.credential** %2, align 8
  %15 = getelementptr inbounds %struct.credential, %struct.credential* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %8
  %19 = load %struct.credential*, %struct.credential** %2, align 8
  %20 = getelementptr inbounds %struct.credential, %struct.credential* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @proto_is_http(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load %struct.credential*, %struct.credential** %2, align 8
  %26 = getelementptr inbounds %struct.credential, %struct.credential* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @FREE_AND_NULL(i32 %27)
  br label %29

29:                                               ; preds = %7, %24, %18, %8
  ret void
}

declare dso_local i32 @git_config(i32, %struct.credential*) #1

declare dso_local i64 @proto_is_http(i32) #1

declare dso_local i32 @FREE_AND_NULL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
