; ModuleID = '/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_fast-classifier.c_fast_classifier_update_protocol.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_fast-classifier.c_fast_classifier_update_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfe_connection_create = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nf_conn = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@nf_ct_tcp_no_window_check = common dso_local global i32 0, align 4
@IP_CT_TCP_FLAG_BE_LIBERAL = common dso_local global i32 0, align 4
@SFE_CREATE_FLAG_NO_SEQ_CHECK = common dso_local global i32 0, align 4
@TCP_CONNTRACK_ESTABLISHED = common dso_local global i32 0, align 4
@FAST_CL_EXCEPTION_TCP_NOT_ESTABLISHED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"connection in termination state: %#x, s: %pI4:%u, d: %pI4:%u\0A\00", align 1
@FAST_CL_EXCEPTION_UNKNOW_PROTOCOL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"unhandled protocol %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sfe_connection_create*, %struct.nf_conn*)* @fast_classifier_update_protocol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fast_classifier_update_protocol(%struct.sfe_connection_create* %0, %struct.nf_conn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sfe_connection_create*, align 8
  %5 = alloca %struct.nf_conn*, align 8
  store %struct.sfe_connection_create* %0, %struct.sfe_connection_create** %4, align 8
  store %struct.nf_conn* %1, %struct.nf_conn** %5, align 8
  %6 = load %struct.sfe_connection_create*, %struct.sfe_connection_create** %4, align 8
  %7 = getelementptr inbounds %struct.sfe_connection_create, %struct.sfe_connection_create* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %162 [
    i32 129, label %9
    i32 128, label %161
  ]

9:                                                ; preds = %2
  %10 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %11 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.sfe_connection_create*, %struct.sfe_connection_create** %4, align 8
  %19 = getelementptr inbounds %struct.sfe_connection_create, %struct.sfe_connection_create* %18, i32 0, i32 13
  store i32 %17, i32* %19, align 4
  %20 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %21 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.sfe_connection_create*, %struct.sfe_connection_create** %4, align 8
  %29 = getelementptr inbounds %struct.sfe_connection_create, %struct.sfe_connection_create* %28, i32 0, i32 12
  store i32 %27, i32* %29, align 4
  %30 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %31 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.sfe_connection_create*, %struct.sfe_connection_create** %4, align 8
  %39 = getelementptr inbounds %struct.sfe_connection_create, %struct.sfe_connection_create* %38, i32 0, i32 11
  store i32 %37, i32* %39, align 4
  %40 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %41 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.sfe_connection_create*, %struct.sfe_connection_create** %4, align 8
  %49 = getelementptr inbounds %struct.sfe_connection_create, %struct.sfe_connection_create* %48, i32 0, i32 10
  store i32 %47, i32* %49, align 4
  %50 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %51 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.sfe_connection_create*, %struct.sfe_connection_create** %4, align 8
  %59 = getelementptr inbounds %struct.sfe_connection_create, %struct.sfe_connection_create* %58, i32 0, i32 9
  store i32 %57, i32* %59, align 4
  %60 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %61 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.sfe_connection_create*, %struct.sfe_connection_create** %4, align 8
  %69 = getelementptr inbounds %struct.sfe_connection_create, %struct.sfe_connection_create* %68, i32 0, i32 8
  store i32 %67, i32* %69, align 4
  %70 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %71 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.sfe_connection_create*, %struct.sfe_connection_create** %4, align 8
  %79 = getelementptr inbounds %struct.sfe_connection_create, %struct.sfe_connection_create* %78, i32 0, i32 7
  store i32 %77, i32* %79, align 4
  %80 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %81 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.sfe_connection_create*, %struct.sfe_connection_create** %4, align 8
  %89 = getelementptr inbounds %struct.sfe_connection_create, %struct.sfe_connection_create* %88, i32 0, i32 6
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @nf_ct_tcp_no_window_check, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %116, label %92

92:                                               ; preds = %9
  %93 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %94 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i64 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @IP_CT_TCP_FLAG_BE_LIBERAL, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %116, label %104

104:                                              ; preds = %92
  %105 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %106 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i64 1
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @IP_CT_TCP_FLAG_BE_LIBERAL, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %104, %92, %9
  %117 = load i32, i32* @SFE_CREATE_FLAG_NO_SEQ_CHECK, align 4
  %118 = load %struct.sfe_connection_create*, %struct.sfe_connection_create** %4, align 8
  %119 = getelementptr inbounds %struct.sfe_connection_create, %struct.sfe_connection_create* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %116, %104
  %123 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %124 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %123, i32 0, i32 0
  %125 = call i32 @spin_lock_bh(i32* %124)
  %126 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %127 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @TCP_CONNTRACK_ESTABLISHED, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %157

133:                                              ; preds = %122
  %134 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %135 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %134, i32 0, i32 0
  %136 = call i32 @spin_unlock_bh(i32* %135)
  %137 = load i32, i32* @FAST_CL_EXCEPTION_TCP_NOT_ESTABLISHED, align 4
  %138 = call i32 @fast_classifier_incr_exceptions(i32 %137)
  %139 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %140 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.sfe_connection_create*, %struct.sfe_connection_create** %4, align 8
  %145 = getelementptr inbounds %struct.sfe_connection_create, %struct.sfe_connection_create* %144, i32 0, i32 4
  %146 = load %struct.sfe_connection_create*, %struct.sfe_connection_create** %4, align 8
  %147 = getelementptr inbounds %struct.sfe_connection_create, %struct.sfe_connection_create* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @ntohs(i32 %148)
  %150 = load %struct.sfe_connection_create*, %struct.sfe_connection_create** %4, align 8
  %151 = getelementptr inbounds %struct.sfe_connection_create, %struct.sfe_connection_create* %150, i32 0, i32 2
  %152 = load %struct.sfe_connection_create*, %struct.sfe_connection_create** %4, align 8
  %153 = getelementptr inbounds %struct.sfe_connection_create, %struct.sfe_connection_create* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @ntohs(i32 %154)
  %156 = call i32 (i8*, i32, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %143, i32* %145, i32 %149, i32* %151, i32 %155)
  store i32 0, i32* %3, align 4
  br label %170

157:                                              ; preds = %122
  %158 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %159 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %158, i32 0, i32 0
  %160 = call i32 @spin_unlock_bh(i32* %159)
  br label %169

161:                                              ; preds = %2
  br label %169

162:                                              ; preds = %2
  %163 = load i32, i32* @FAST_CL_EXCEPTION_UNKNOW_PROTOCOL, align 4
  %164 = call i32 @fast_classifier_incr_exceptions(i32 %163)
  %165 = load %struct.sfe_connection_create*, %struct.sfe_connection_create** %4, align 8
  %166 = getelementptr inbounds %struct.sfe_connection_create, %struct.sfe_connection_create* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 (i8*, i32, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %167)
  store i32 0, i32* %3, align 4
  br label %170

169:                                              ; preds = %161, %157
  store i32 1, i32* %3, align 4
  br label %170

170:                                              ; preds = %169, %162, %133
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @fast_classifier_incr_exceptions(i32) #1

declare dso_local i32 @DEBUG_TRACE(i8*, i32, ...) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
