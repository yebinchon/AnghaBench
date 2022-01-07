; ModuleID = '/home/carl/AnghaBench/git/extr_transport.c_git_transport_push.c'
source_filename = "/home/carl/AnghaBench/git/extr_transport.c_git_transport_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.transport = type { i64, i32, i32, i32, %struct.git_transport_data* }
%struct.git_transport_data = type { i32, i64, i32*, i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ref = type { i32 }
%struct.send_pack_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TRANSPORT_PUSH_MIRROR = common dso_local global i32 0, align 4
@TRANSPORT_PUSH_FORCE = common dso_local global i32 0, align 4
@TRANSPORT_PUSH_DRY_RUN = common dso_local global i32 0, align 4
@TRANSPORT_PUSH_PORCELAIN = common dso_local global i32 0, align 4
@TRANSPORT_PUSH_ATOMIC = common dso_local global i32 0, align 4
@TRANSPORT_PUSH_CERT_ALWAYS = common dso_local global i32 0, align 4
@SEND_PACK_PUSH_CERT_ALWAYS = common dso_local global i32 0, align 4
@TRANSPORT_PUSH_CERT_IF_ASKED = common dso_local global i32 0, align 4
@SEND_PACK_PUSH_CERT_IF_ASKED = common dso_local global i32 0, align 4
@SEND_PACK_PUSH_CERT_NEVER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"support for protocol v2 not implemented yet\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"unknown protocol version\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.transport*, %struct.ref*, i32)* @git_transport_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @git_transport_push(%struct.transport* %0, %struct.ref* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.transport*, align 8
  %6 = alloca %struct.ref*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.git_transport_data*, align 8
  %9 = alloca %struct.send_pack_args, align 4
  %10 = alloca i32, align 4
  store %struct.transport* %0, %struct.transport** %5, align 8
  store %struct.ref* %1, %struct.ref** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.transport*, %struct.transport** %5, align 8
  %12 = getelementptr inbounds %struct.transport, %struct.transport* %11, i32 0, i32 4
  %13 = load %struct.git_transport_data*, %struct.git_transport_data** %12, align 8
  store %struct.git_transport_data* %13, %struct.git_transport_data** %8, align 8
  store i32 0, i32* %10, align 4
  %14 = call i64 (...) @transport_color_config()
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %159

17:                                               ; preds = %3
  %18 = load %struct.git_transport_data*, %struct.git_transport_data** %8, align 8
  %19 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load %struct.transport*, %struct.transport** %5, align 8
  %24 = call i32 @get_refs_via_connect(%struct.transport* %23, i32 1, i32* null)
  br label %25

25:                                               ; preds = %22, %17
  %26 = call i32 @memset(%struct.send_pack_args* %9, i32 0, i32 48)
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @TRANSPORT_PUSH_MIRROR, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = getelementptr inbounds %struct.send_pack_args, %struct.send_pack_args* %9, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @TRANSPORT_PUSH_FORCE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = getelementptr inbounds %struct.send_pack_args, %struct.send_pack_args* %9, i32 0, i32 1
  store i32 %41, i32* %42, align 4
  %43 = load %struct.git_transport_data*, %struct.git_transport_data** %8, align 8
  %44 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.send_pack_args, %struct.send_pack_args* %9, i32 0, i32 11
  store i32 %46, i32* %47, align 4
  %48 = load %struct.transport*, %struct.transport** %5, align 8
  %49 = getelementptr inbounds %struct.transport, %struct.transport* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %50, 0
  %52 = zext i1 %51 to i32
  %53 = getelementptr inbounds %struct.send_pack_args, %struct.send_pack_args* %9, i32 0, i32 2
  store i32 %52, i32* %53, align 4
  %54 = load %struct.transport*, %struct.transport** %5, align 8
  %55 = getelementptr inbounds %struct.transport, %struct.transport* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp slt i64 %56, 0
  %58 = zext i1 %57 to i32
  %59 = getelementptr inbounds %struct.send_pack_args, %struct.send_pack_args* %9, i32 0, i32 3
  store i32 %58, i32* %59, align 4
  %60 = load %struct.transport*, %struct.transport** %5, align 8
  %61 = getelementptr inbounds %struct.transport, %struct.transport* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = getelementptr inbounds %struct.send_pack_args, %struct.send_pack_args* %9, i32 0, i32 10
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @TRANSPORT_PUSH_DRY_RUN, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = getelementptr inbounds %struct.send_pack_args, %struct.send_pack_args* %9, i32 0, i32 4
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @TRANSPORT_PUSH_PORCELAIN, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = getelementptr inbounds %struct.send_pack_args, %struct.send_pack_args* %9, i32 0, i32 5
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @TRANSPORT_PUSH_ATOMIC, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = getelementptr inbounds %struct.send_pack_args, %struct.send_pack_args* %9, i32 0, i32 6
  store i32 %86, i32* %87, align 4
  %88 = load %struct.transport*, %struct.transport** %5, align 8
  %89 = getelementptr inbounds %struct.transport, %struct.transport* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.send_pack_args, %struct.send_pack_args* %9, i32 0, i32 9
  store i32 %90, i32* %91, align 4
  %92 = load %struct.transport*, %struct.transport** %5, align 8
  %93 = getelementptr inbounds %struct.transport, %struct.transport* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = getelementptr inbounds %struct.send_pack_args, %struct.send_pack_args* %9, i32 0, i32 8
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @TRANSPORT_PUSH_CERT_ALWAYS, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %25
  %101 = load i32, i32* @SEND_PACK_PUSH_CERT_ALWAYS, align 4
  %102 = getelementptr inbounds %struct.send_pack_args, %struct.send_pack_args* %9, i32 0, i32 7
  store i32 %101, i32* %102, align 4
  br label %115

103:                                              ; preds = %25
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @TRANSPORT_PUSH_CERT_IF_ASKED, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load i32, i32* @SEND_PACK_PUSH_CERT_IF_ASKED, align 4
  %110 = getelementptr inbounds %struct.send_pack_args, %struct.send_pack_args* %9, i32 0, i32 7
  store i32 %109, i32* %110, align 4
  br label %114

111:                                              ; preds = %103
  %112 = load i32, i32* @SEND_PACK_PUSH_CERT_NEVER, align 4
  %113 = getelementptr inbounds %struct.send_pack_args, %struct.send_pack_args* %9, i32 0, i32 7
  store i32 %112, i32* %113, align 4
  br label %114

114:                                              ; preds = %111, %108
  br label %115

115:                                              ; preds = %114, %100
  %116 = load %struct.git_transport_data*, %struct.git_transport_data** %8, align 8
  %117 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  switch i32 %118, label %135 [
    i32 128, label %119
    i32 129, label %122
    i32 130, label %122
    i32 131, label %133
  ]

119:                                              ; preds = %115
  %120 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %121 = call i32 @die(i32 %120)
  br label %135

122:                                              ; preds = %115, %115
  %123 = load %struct.git_transport_data*, %struct.git_transport_data** %8, align 8
  %124 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %123, i32 0, i32 3
  %125 = load i32*, i32** %124, align 8
  %126 = load %struct.git_transport_data*, %struct.git_transport_data** %8, align 8
  %127 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = load %struct.ref*, %struct.ref** %6, align 8
  %130 = load %struct.git_transport_data*, %struct.git_transport_data** %8, align 8
  %131 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %130, i32 0, i32 4
  %132 = call i32 @send_pack(%struct.send_pack_args* %9, i32* %125, i32* %128, %struct.ref* %129, i32* %131)
  store i32 %132, i32* %10, align 4
  br label %135

133:                                              ; preds = %115
  %134 = call i32 @BUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %115, %122, %119
  %136 = load %struct.git_transport_data*, %struct.git_transport_data** %8, align 8
  %137 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %136, i32 0, i32 3
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @close(i32 %140)
  %142 = load %struct.git_transport_data*, %struct.git_transport_data** %8, align 8
  %143 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %142, i32 0, i32 3
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @close(i32 %146)
  %148 = load %struct.git_transport_data*, %struct.git_transport_data** %8, align 8
  %149 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %148, i32 0, i32 2
  %150 = load i32*, i32** %149, align 8
  %151 = call i32 @finish_connect(i32* %150)
  %152 = load i32, i32* %10, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %10, align 4
  %154 = load %struct.git_transport_data*, %struct.git_transport_data** %8, align 8
  %155 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %154, i32 0, i32 2
  store i32* null, i32** %155, align 8
  %156 = load %struct.git_transport_data*, %struct.git_transport_data** %8, align 8
  %157 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %156, i32 0, i32 1
  store i64 0, i64* %157, align 8
  %158 = load i32, i32* %10, align 4
  store i32 %158, i32* %4, align 4
  br label %159

159:                                              ; preds = %135, %16
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local i64 @transport_color_config(...) #1

declare dso_local i32 @get_refs_via_connect(%struct.transport*, i32, i32*) #1

declare dso_local i32 @memset(%struct.send_pack_args*, i32, i32) #1

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @send_pack(%struct.send_pack_args*, i32*, i32*, %struct.ref*, i32*) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @finish_connect(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
