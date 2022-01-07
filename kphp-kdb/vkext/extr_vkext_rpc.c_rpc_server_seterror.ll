; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_rpc_server_seterror.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_rpc_server_seterror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_server = type { i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_server*, i8*, i32)* @rpc_server_seterror to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpc_server_seterror(%struct.rpc_server* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.rpc_server*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.rpc_server* %0, %struct.rpc_server** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i8*, i8** %5, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %39

9:                                                ; preds = %3
  %10 = load %struct.rpc_server*, %struct.rpc_server** %4, align 8
  %11 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %24

14:                                               ; preds = %9
  %15 = load %struct.rpc_server*, %struct.rpc_server** %4, align 8
  %16 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.rpc_server*, %struct.rpc_server** %4, align 8
  %19 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i64 @strlen(i8* %20)
  %22 = add nsw i64 %21, 1
  %23 = call i32 @zzfree(i8* %17, i64 %22)
  br label %24

24:                                               ; preds = %14, %9
  %25 = load i8*, i8** %5, align 8
  %26 = call i8* @strdup(i8* %25)
  %27 = load %struct.rpc_server*, %struct.rpc_server** %4, align 8
  %28 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.rpc_server*, %struct.rpc_server** %4, align 8
  %31 = getelementptr inbounds %struct.rpc_server, %struct.rpc_server* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = call i64 @strlen(i8* %32)
  %34 = add nsw i64 %33, 1
  %35 = call i32 @ADD_MALLOC(i64 %34)
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @rpc_global_seterror(i8* %36, i32 %37)
  br label %39

39:                                               ; preds = %24, %3
  ret void
}

declare dso_local i32 @zzfree(i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @ADD_MALLOC(i64) #1

declare dso_local i32 @rpc_global_seterror(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
