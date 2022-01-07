; ModuleID = '/home/carl/AnghaBench/git/extr_transport.c_transport_get.c'
source_filename = "/home/carl/AnghaBench/git/extr_transport.c_transport_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.transport = type { i8*, %struct.TYPE_2__*, i32*, %struct.git_transport_data*, %struct.remote*, i64, i32 }
%struct.TYPE_2__ = type { i32, i8*, i8* }
%struct.git_transport_data = type { i64, i32*, %struct.TYPE_2__ }
%struct.remote = type { i8*, i8**, i8*, i8* }
%struct.bundle_transport_data = type { i64, i32*, %struct.TYPE_2__ }

@.str = private unnamed_addr constant [38 x i8] c"No remote provided to transport_get()\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"rsync:\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"git-over-rsync is no longer supported\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@bundle_vtable = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"file://\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"git://\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"ssh://\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"git+ssh://\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"ssh+git://\00", align 1
@builtin_smart_vtable = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"git-upload-pack\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"git-receive-pack\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.transport* @transport_get(%struct.remote* %0, i8* %1) #0 {
  %3 = alloca %struct.remote*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.transport*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.bundle_transport_data*, align 8
  %9 = alloca %struct.git_transport_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.remote* %0, %struct.remote** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = call i8* @xcalloc(i32 1, i32 56)
  %13 = bitcast i8* %12 to %struct.transport*
  store %struct.transport* %13, %struct.transport** %6, align 8
  %14 = call i32 @isatty(i32 2)
  %15 = load %struct.transport*, %struct.transport** %6, align 8
  %16 = getelementptr inbounds %struct.transport, %struct.transport* %15, i32 0, i32 6
  store i32 %14, i32* %16, align 8
  %17 = load %struct.remote*, %struct.remote** %3, align 8
  %18 = icmp ne %struct.remote* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = call i32 @BUG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %2
  %22 = load %struct.transport*, %struct.transport** %6, align 8
  %23 = getelementptr inbounds %struct.transport, %struct.transport* %22, i32 0, i32 5
  store i64 0, i64* %23, align 8
  %24 = load %struct.remote*, %struct.remote** %3, align 8
  %25 = load %struct.transport*, %struct.transport** %6, align 8
  %26 = getelementptr inbounds %struct.transport, %struct.transport* %25, i32 0, i32 4
  store %struct.remote* %24, %struct.remote** %26, align 8
  %27 = load %struct.remote*, %struct.remote** %3, align 8
  %28 = getelementptr inbounds %struct.remote, %struct.remote* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %5, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %43, label %32

32:                                               ; preds = %21
  %33 = load %struct.remote*, %struct.remote** %3, align 8
  %34 = getelementptr inbounds %struct.remote, %struct.remote* %33, i32 0, i32 1
  %35 = load i8**, i8*** %34, align 8
  %36 = icmp ne i8** %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.remote*, %struct.remote** %3, align 8
  %39 = getelementptr inbounds %struct.remote, %struct.remote* %38, i32 0, i32 1
  %40 = load i8**, i8*** %39, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 0
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %4, align 8
  br label %43

43:                                               ; preds = %37, %32, %21
  %44 = load i8*, i8** %4, align 8
  %45 = load %struct.transport*, %struct.transport** %6, align 8
  %46 = getelementptr inbounds %struct.transport, %struct.transport* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %77

49:                                               ; preds = %43
  %50 = load i8*, i8** %4, align 8
  store i8* %50, i8** %7, align 8
  br label %51

51:                                               ; preds = %60, %49
  %52 = load i8*, i8** %7, align 8
  %53 = load i8*, i8** %4, align 8
  %54 = icmp eq i8* %52, %53
  %55 = zext i1 %54 to i32
  %56 = load i8*, i8** %7, align 8
  %57 = load i8, i8* %56, align 1
  %58 = call i64 @is_urlschemechar(i32 %55, i8 signext %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %7, align 8
  br label %51

63:                                               ; preds = %51
  %64 = load i8*, i8** %7, align 8
  %65 = call i64 @starts_with(i8* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %63
  %68 = load i8*, i8** %4, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = load i8*, i8** %4, align 8
  %71 = ptrtoint i8* %69 to i64
  %72 = ptrtoint i8* %70 to i64
  %73 = sub i64 %71, %72
  %74 = trunc i64 %73 to i32
  %75 = call i8* @xstrndup(i8* %68, i32 %74)
  store i8* %75, i8** %5, align 8
  br label %76

76:                                               ; preds = %67, %63
  br label %77

77:                                               ; preds = %76, %43
  %78 = load i8*, i8** %5, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load %struct.transport*, %struct.transport** %6, align 8
  %82 = load i8*, i8** %5, align 8
  %83 = call i32 @transport_helper_init(%struct.transport* %81, i8* %82)
  br label %167

84:                                               ; preds = %77
  %85 = load i8*, i8** %4, align 8
  %86 = call i64 @starts_with(i8* %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %90 = call i32 @die(i32 %89)
  br label %166

91:                                               ; preds = %84
  %92 = load i8*, i8** %4, align 8
  %93 = call i64 @url_is_local_not_ssh(i8* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %115

95:                                               ; preds = %91
  %96 = load i8*, i8** %4, align 8
  %97 = call i64 @is_file(i8* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %115

99:                                               ; preds = %95
  %100 = load i8*, i8** %4, align 8
  %101 = call i64 @is_bundle(i8* %100, i32 1)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %99
  %104 = call i8* @xcalloc(i32 1, i32 40)
  %105 = bitcast i8* %104 to %struct.bundle_transport_data*
  store %struct.bundle_transport_data* %105, %struct.bundle_transport_data** %8, align 8
  %106 = call i32 @transport_check_allowed(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %107 = load %struct.bundle_transport_data*, %struct.bundle_transport_data** %8, align 8
  %108 = bitcast %struct.bundle_transport_data* %107 to %struct.git_transport_data*
  %109 = load %struct.transport*, %struct.transport** %6, align 8
  %110 = getelementptr inbounds %struct.transport, %struct.transport* %109, i32 0, i32 3
  store %struct.git_transport_data* %108, %struct.git_transport_data** %110, align 8
  %111 = load %struct.transport*, %struct.transport** %6, align 8
  %112 = getelementptr inbounds %struct.transport, %struct.transport* %111, i32 0, i32 2
  store i32* @bundle_vtable, i32** %112, align 8
  %113 = load %struct.transport*, %struct.transport** %6, align 8
  %114 = getelementptr inbounds %struct.transport, %struct.transport* %113, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %114, align 8
  br label %165

115:                                              ; preds = %99, %95, %91
  %116 = load i8*, i8** %4, align 8
  %117 = call i32 @is_url(i8* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %139

119:                                              ; preds = %115
  %120 = load i8*, i8** %4, align 8
  %121 = call i64 @starts_with(i8* %120, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %139, label %123

123:                                              ; preds = %119
  %124 = load i8*, i8** %4, align 8
  %125 = call i64 @starts_with(i8* %124, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %139, label %127

127:                                              ; preds = %123
  %128 = load i8*, i8** %4, align 8
  %129 = call i64 @starts_with(i8* %128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %139, label %131

131:                                              ; preds = %127
  %132 = load i8*, i8** %4, align 8
  %133 = call i64 @starts_with(i8* %132, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %131
  %136 = load i8*, i8** %4, align 8
  %137 = call i64 @starts_with(i8* %136, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %155

139:                                              ; preds = %135, %131, %127, %123, %119, %115
  %140 = call i8* @xcalloc(i32 1, i32 40)
  %141 = bitcast i8* %140 to %struct.git_transport_data*
  store %struct.git_transport_data* %141, %struct.git_transport_data** %9, align 8
  %142 = load %struct.git_transport_data*, %struct.git_transport_data** %9, align 8
  %143 = load %struct.transport*, %struct.transport** %6, align 8
  %144 = getelementptr inbounds %struct.transport, %struct.transport* %143, i32 0, i32 3
  store %struct.git_transport_data* %142, %struct.git_transport_data** %144, align 8
  %145 = load %struct.transport*, %struct.transport** %6, align 8
  %146 = getelementptr inbounds %struct.transport, %struct.transport* %145, i32 0, i32 2
  store i32* @builtin_smart_vtable, i32** %146, align 8
  %147 = load %struct.git_transport_data*, %struct.git_transport_data** %9, align 8
  %148 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %147, i32 0, i32 2
  %149 = load %struct.transport*, %struct.transport** %6, align 8
  %150 = getelementptr inbounds %struct.transport, %struct.transport* %149, i32 0, i32 1
  store %struct.TYPE_2__* %148, %struct.TYPE_2__** %150, align 8
  %151 = load %struct.git_transport_data*, %struct.git_transport_data** %9, align 8
  %152 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %151, i32 0, i32 1
  store i32* null, i32** %152, align 8
  %153 = load %struct.git_transport_data*, %struct.git_transport_data** %9, align 8
  %154 = getelementptr inbounds %struct.git_transport_data, %struct.git_transport_data* %153, i32 0, i32 0
  store i64 0, i64* %154, align 8
  br label %164

155:                                              ; preds = %135
  %156 = load i8*, i8** %4, align 8
  %157 = call i32 @external_specification_len(i8* %156)
  store i32 %157, i32* %10, align 4
  %158 = load i8*, i8** %4, align 8
  %159 = load i32, i32* %10, align 4
  %160 = call i8* @xmemdupz(i8* %158, i32 %159)
  store i8* %160, i8** %11, align 8
  %161 = load %struct.transport*, %struct.transport** %6, align 8
  %162 = load i8*, i8** %11, align 8
  %163 = call i32 @transport_helper_init(%struct.transport* %161, i8* %162)
  br label %164

164:                                              ; preds = %155, %139
  br label %165

165:                                              ; preds = %164, %103
  br label %166

166:                                              ; preds = %165, %88
  br label %167

167:                                              ; preds = %166, %80
  %168 = load %struct.transport*, %struct.transport** %6, align 8
  %169 = getelementptr inbounds %struct.transport, %struct.transport* %168, i32 0, i32 1
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** %169, align 8
  %171 = icmp ne %struct.TYPE_2__* %170, null
  br i1 %171, label %172, label %211

172:                                              ; preds = %167
  %173 = load %struct.transport*, %struct.transport** %6, align 8
  %174 = getelementptr inbounds %struct.transport, %struct.transport* %173, i32 0, i32 1
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  store i32 1, i32* %176, align 8
  %177 = load %struct.transport*, %struct.transport** %6, align 8
  %178 = getelementptr inbounds %struct.transport, %struct.transport* %177, i32 0, i32 1
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8** %180, align 8
  %181 = load %struct.remote*, %struct.remote** %3, align 8
  %182 = getelementptr inbounds %struct.remote, %struct.remote* %181, i32 0, i32 2
  %183 = load i8*, i8** %182, align 8
  %184 = icmp ne i8* %183, null
  br i1 %184, label %185, label %193

185:                                              ; preds = %172
  %186 = load %struct.remote*, %struct.remote** %3, align 8
  %187 = getelementptr inbounds %struct.remote, %struct.remote* %186, i32 0, i32 2
  %188 = load i8*, i8** %187, align 8
  %189 = load %struct.transport*, %struct.transport** %6, align 8
  %190 = getelementptr inbounds %struct.transport, %struct.transport* %189, i32 0, i32 1
  %191 = load %struct.TYPE_2__*, %struct.TYPE_2__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 1
  store i8* %188, i8** %192, align 8
  br label %193

193:                                              ; preds = %185, %172
  %194 = load %struct.transport*, %struct.transport** %6, align 8
  %195 = getelementptr inbounds %struct.transport, %struct.transport* %194, i32 0, i32 1
  %196 = load %struct.TYPE_2__*, %struct.TYPE_2__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 2
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8** %197, align 8
  %198 = load %struct.remote*, %struct.remote** %3, align 8
  %199 = getelementptr inbounds %struct.remote, %struct.remote* %198, i32 0, i32 3
  %200 = load i8*, i8** %199, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %202, label %210

202:                                              ; preds = %193
  %203 = load %struct.remote*, %struct.remote** %3, align 8
  %204 = getelementptr inbounds %struct.remote, %struct.remote* %203, i32 0, i32 3
  %205 = load i8*, i8** %204, align 8
  %206 = load %struct.transport*, %struct.transport** %6, align 8
  %207 = getelementptr inbounds %struct.transport, %struct.transport* %206, i32 0, i32 1
  %208 = load %struct.TYPE_2__*, %struct.TYPE_2__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 2
  store i8* %205, i8** %209, align 8
  br label %210

210:                                              ; preds = %202, %193
  br label %211

211:                                              ; preds = %210, %167
  %212 = load %struct.transport*, %struct.transport** %6, align 8
  ret %struct.transport* %212
}

declare dso_local i8* @xcalloc(i32, i32) #1

declare dso_local i32 @isatty(i32) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local i64 @is_urlschemechar(i32, i8 signext) #1

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local i8* @xstrndup(i8*, i32) #1

declare dso_local i32 @transport_helper_init(%struct.transport*, i8*) #1

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @url_is_local_not_ssh(i8*) #1

declare dso_local i64 @is_file(i8*) #1

declare dso_local i64 @is_bundle(i8*, i32) #1

declare dso_local i32 @transport_check_allowed(i8*) #1

declare dso_local i32 @is_url(i8*) #1

declare dso_local i32 @external_specification_len(i8*) #1

declare dso_local i8* @xmemdupz(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
